using System;

namespace Core.Entity
{
    [Serializable]
    public class Account
    {
        private string id;
        private string name;

        public string Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public Account(string id, string name)
        {
            Id = id;
            Name = name;
        }
        public Account()
        {

        }

        public override string ToString()
        {
            return Id + " " + Name;
        }

        public override bool Equals(object obj)
        {
            return obj is Account ? (obj as Account).Id == Id : false;
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
