using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Monkey
{
    public class Orders
    {
        public int id { get; set; }
        public DateTime dateTimeCreate { get; set; }
        public int clientId { get; set; }
        public int statusId { get; set; }
        public DateTime dateClose { get; set; }
        public int rentalTime { get; set; }
        public Clients client { get; set; }
    }
}
