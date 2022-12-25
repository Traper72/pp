using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Monkey
{
    public class Clients
    {
        public int id { get; set; }
        public string name { get; set; }
        public string surname { get; set; }
        public string patronymic { get; set; }
        public int seriesPassport { get; set; }
        public int numberPassport { get; set; }
        public DateTime birthOfDate { get; set; }
        public string adress { get; set; }
        public string email { get; set; }
        public override string ToString()
        {
            return $"{surname} {name} {patronymic}";
        }
    }
}
