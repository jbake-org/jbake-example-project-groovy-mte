<% import static groovy.xml.XmlUtil.escapeXml %><?xml version="1.0"?>
<feed xmlns="http://www.w3.org/2005/Atom">
    <title>${config.blog_title}</title>
    <link href="${config.site_host}${config.site_contextPath}"/>
    <link rel="self" type="application/atom+xml"
          href="${config.site_host}${config.site_contextPath}${config.feed_file}"/>
    <subtitle>${config.blog_subtitle}</subtitle>
    <updated>${published_date.format("yyyy-MM-dd'T'HH:mm:ss'Z'")}</updated>
    <id>tag:${config.site_host},${published_date.format("yyyy:MM")}</id>

    <%published_posts.each {post -> %>
    <entry>
      <title>${post.title}</title>
      <author>
          <name>${post.author}</name>
      </author>
      <link href="${config.site_host}${config.site_contextPath}${post.uri}"/>
      <updated>${post.date.format("yyyy-MM-dd'T'HH:mm:ss'Z'")}</updated>
      <id>${config.site_host}${config.site_contextPath}${post.uri}</id>
      <% post.tags.each { tag -> %>
      <category term="${tag}"/>
      <% } %>
      <content type="html">
      ${escapeXml(post.body)}
	  </content>
    </entry>
    <%}%>


</feed>
