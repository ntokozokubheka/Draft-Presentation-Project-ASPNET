using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Team_42_web_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        bool RegisterRec(string name, string email,string Dob, string password); 
        
        [OperationContract]
        bool PostJob(string description, string date, string R_Id,string company,string Location,string qualification,string salary,string experience,string deadline);

        [OperationContract]
        List<JobPost> GetJobs();


        [OperationContract]

        bool LoginRec(string email, string password);

         [OperationContract]

        Recruiter getRec(string email, string password);
        // TODO: Add your service operations here
    }


    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}
