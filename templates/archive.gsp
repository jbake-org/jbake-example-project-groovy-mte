<%include 'header.gsp'%>
<%include 'menu.gsp'%>
	
	<div class="row">
        <div class="small-12 columns">
            <section class="wrap">
            <h1>Blog Archive</h1>
            <!--<ul>-->
                <%def last_month=null;%>
                <%published_posts.each {post ->%>
                    <%if (last_month) {%>
                        <%if (post.date.format("MMMM yyyy") != last_month) {%>
                            </ul>
                            <h4>${post.date.format("MMMM yyyy")}</h4>
                            <ul>
                        <%}%>
                    <% } else { %>
                        <h4>${post.date.format("MMMM yyyy")}</h4>
                        <ul>
                    <% }%>

                    <li>${post.date.format("dd")} - <a href="${config.site_contextPath}${post.uri}">${post.title}</a></li>
                    <%last_month = post.date.format("MMMM yyyy")%>
                <%}%>
            </ul>
            </section>

        </div>
	</div>
	

<%include "footer.gsp"%>