using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.EntityClient;
using System.Data.SqlClient;

namespace WTWP_Project_2.DataAccessLayer
{
    public class DBConnection
    {
    string providerName = "System.Data.SqlClient";
        string serverName = ".";
        string databaseName = "SHOESHOP";
        private SHOESHOPEntities entity;
        
        public DBConnection()
        {
            // Specify the provider name, server and database.

            // Initialize the connection string builder for the
            // underlying provider.
            SqlConnectionStringBuilder sqlBuilder =
                new SqlConnectionStringBuilder();

            // Set the properties for the data source.
            sqlBuilder.DataSource = serverName;
            sqlBuilder.InitialCatalog = databaseName;
            sqlBuilder.IntegratedSecurity = true;

            // Build the SqlConnection connection string.
            string providerString = sqlBuilder.ToString();

            // Initialize the EntityConnectionStringBuilder.
            EntityConnectionStringBuilder entityBuilder =
                new EntityConnectionStringBuilder();

            //Set the provider name.
            entityBuilder.Provider = providerName;

            // Set the provider-specific connection string.
            entityBuilder.ProviderConnectionString = providerString;

            // Set the Metadata location.
            entityBuilder.Metadata =@"res://*/ShoeShopEntity.csdl|res://*/ShoeShopEntity.ssdl|res://*/ShoeShopEntity.msl";



            entity = new SHOESHOPEntities(entityBuilder.ToString());
        }
        public SHOESHOPEntities ConnectDB
        {
            get
            {
                return entity;
            }
        }

    }

}
