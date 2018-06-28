using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace SitemapBreadcrumbs
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //
            // Register a handler for SiteMap.SiteMapResolve events to hide the
            // root node from SiteMapPath controls.
            //
            SiteMap.SiteMapResolve += new SiteMapResolveEventHandler(HideRootNode);
        }

        static SiteMapNode HideRootNode(Object sender, SiteMapResolveEventArgs e)
        {
            //
            // Hide the root node from SiteMapPath controls by cloning the site
            // map from the current node up to the node below the root node and
            // setting that node's ParentNode property to null.
            //
            SiteMapNode node = SiteMap.CurrentNode.Clone();
            SiteMapNode current = node;
            SiteMapNode root = SiteMap.RootNode;

            if (current != root) // Just in case the current node *is* the root node!
            {
                while (node.ParentNode != root)
                {
                    node.ParentNode = node.ParentNode.Clone();
                    node = node.ParentNode;
                }
                node.ParentNode = null;
            }
            return current;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}