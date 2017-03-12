using FilmStore.Core;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebClient.Models.Android;
using WebClient.Properties;

namespace WebClient.Controllers
{
    public class FilmsController : ApiController
    {
        private DbFilmRepository model = new DbFilmRepository();

        // GET api/<controller>
        public IEnumerable<Film> Get()
        {
            return model.SelectAll();
        }

        // GET api/<controller>/id
        public IEnumerable<Film> Get(string id)
        {
            return model.SelectByTitle(id);
        }
        // POST api/<controller>
        public HttpResponseMessage Post([FromBody]Film film)
        {
            try
            {
                model.Insert(film);
                    return Request.CreateResponse(HttpStatusCode.Created, film);
            }
            catch (Exception e)
            {
            }
            return Request.CreateErrorResponse(HttpStatusCode.BadRequest,
 "could not save to the database");
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]Film value)
        {
            Film film = model.SelectById(id);
            film.Title = value.Title;
            film.Released = value.Released;
            model.Update(film);
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
            Film film = model.SelectById(id);
            model.Delete(film);
        }
    }
}
namespace WebClient.Models.Android
{
    public class Film
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Released { get; set; }
        public int Stock { get; set; }
        public string Genre { get; set; }
    }
}

namespace FilmStore.Core
{
    public class FilmStoreContext : DbContext
    {
        //database configuration http://msdn.microsoft.com/en-us/data/jj592674
        //looks for filmstore database in SQL Express or LocalDb. 
        //If both are installed, SQL Express will be used. 

        public FilmStoreContext() : base(Settings.Default.Setting)
        {
            //this.Configuration.ProxyCreationEnabled = false;
        }
        public DbSet<Film> Films { get; set; }
    }
}

namespace FilmStore.Core
{
    public class DbFilmRepository 
    {

        public ICollection<Film> SelectAll()
        {
            using (FilmStoreContext context = new FilmStoreContext())
            {
                return context.Films.ToList();
            }
        }

        public Film SelectById(int id)
        {
            using (FilmStoreContext context = new FilmStoreContext())
            {
                return context.Films.FirstOrDefault(f => f.Id ==id);
            }
        }

        public ICollection<Film> SelectByTitle(string searchText)
        {
            using (FilmStoreContext context = new FilmStoreContext())
            {
                List<Film> films = searchText == null ?
                    context.Films.ToList() :
                    context.Films.Where(f => f.Title.Contains(searchText)).ToList();
                return films;
            }
        }

        public void Insert(Film film)
        {
            using (FilmStoreContext context = new FilmStoreContext())
            {
                context.Entry(film).State = EntityState.Added;
                context.SaveChanges();
            }
        }

        public bool Update(Film film)
        {
            using (FilmStoreContext context = new FilmStoreContext())
            {
                context.Entry(film).State = EntityState.Modified;
                context.SaveChanges();
                return true;
            }
        }

        public bool Delete(Film film)
        {
            using (FilmStoreContext context = new FilmStoreContext())
            {
                context.Entry(film).State = EntityState.Deleted;
                context.SaveChanges();
                return true;
            }
        }

    }
}



