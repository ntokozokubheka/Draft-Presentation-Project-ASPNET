using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Team_42_web_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        public List<JobPost> GetJobs()
        {
            var list = new List<JobPost>();

            dynamic v = (from u in db.JobPosts select u);

            foreach (JobPost i in v)
            {
                list.Add(i);

            }

            return list;
        }

        public Recruiter getRec(string email, string password)
        {
            dynamic R = (from u in db.Recruiters where u.R_Email.Equals(email) && u.R_Password.Equals(password) select u).FirstOrDefault();

            return R;
        }

        public bool LoginRec(string email, string password)
        {
            dynamic r = (from u in db.Recruiters where u.R_Email.Equals(email) && u.R_Password.Equals(password) select u).FirstOrDefault();
            try
            {
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public bool PostJob(string description, string date, string R_Id, string company, string Location, string qualification, string salary, string experience, string deadline)
        {
            var c = new JobPost
            {
                P_Description = description,
                P_Date = date,
                R_Id = R_Id,
                 Company= company,
                 Location=Location,
                 Qualification  =qualification,
                 Salary=salary,
                 Experience=experience,
                 Deadline=deadline,


            };

            db.JobPosts.InsertOnSubmit(c);
            try
            {

                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return false;
            }
        }

        public bool RegisterRec(string name, string email, string Dob, string password)
        {
            var c = new Recruiter
            {
                R_Name = name,
                R_Email = email,
                R_Password = password,
                R_DOB=Dob


            };

            db.Recruiters.InsertOnSubmit(c);
            try
            {

                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return false;
            }
        }
    }
}
