using System;
using System.ComponentModel.DataAnnotations;
using System.Runtime.Serialization;
using Core.DataAccess;

namespace Core.Entity
{
    /// <summary>
    /// With Web API, if Serializable atribute is applied,
    /// DataContract should also be used (System.Runtime.Serialization)
    /// </summary>
    //[DataContract]
    //[Serializable]
    public class Product
    {
        //[DataMember]
        [ScaffoldColumn(true)]
        public string Id { get; set; }
        //[DataMember]
        // Allow uppercase and lowercase characters and spaces. 
        [RegularExpression(@"[a-zA-Z'\s]+", ErrorMessage = "Name is not valid.")]
        [Required(ErrorMessage = "Name is required.")]
        public string Name { get; set; }
        //[DataMember]
        public double CostPrice { get; set; }
        //[DataMember]
        public virtual double RetailPrice { get; set; }
        [Timestamp]
        public byte[] RowVersion { get; set; }


        public Product()
        {

        }
        public Product(string id, string name, double costPrice, double retailPrice = 0)
        {
            Id = id;
            Name = name;
            CostPrice = costPrice;
            RetailPrice = retailPrice;
        }

        public override string ToString()
        {
            return Name;
        }

        public override bool Equals(object obj)
        {
            return obj is Product ? (obj as Product).Id == Id : false;
        }

        public override int GetHashCode()
        {
            //return Id.GetHashCode();
            return Id == null ? base.GetHashCode() : Id.GetHashCode();
        }
    }
}
