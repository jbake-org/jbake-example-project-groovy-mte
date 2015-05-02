layout 'layout/main.tpl', true,
        bodyContents: contents {

            published_posts[0..2].each { post ->
                div(class:"row"){
                    div(class:"small-12 middle-12 large-12 columns"){
                        article(class:"wrap"){
                            header{
                                div(class:"row"){
                                    div(class:"small-3 medium-1 large-1 columns"){
                                        div(class:"termin"){
                                            div(class:"month","${post.date?.format("MMM")}")
                                            newLine()
                                            div(class:"date","${post.date?.format("dd")}")
                                            newLine()
                                            div(class:"year","${post.date?.format("yyyy")}")
                                        }
                                    }

                                    div(class:"small-9 medium-11 large-11 columns"){

                                        div{
                                            h2{
                                                a(href:"${config.site_contextPath}${post.uri}","${post.title}")
                                            }
                                            p {
                                                def contextPath = "${config.site_contextPath}"
                                                post.tags.each { tag ->
                                                    tag = tag.trim()

                                                    span{
                                                        a(href:"${contextPath}tags/${tag.replace(' ','-')}.html", class:"label","${tag}")
                                                    }
                                                }
                                            }
                                            hr()
                                        }
                                    }
                                }
                            }

                            div(class:"row"){
                                div(class:"small-9 small-offset-3 medium-11 medium-offset-1 large-11 large-offset-1 columns"){
                                    yieldUnescaped post.body
                                }
                            }
                        }
                    }
                }
            }
            div(class:"row"){
                div(class:"small-12 columns"){
                    hr()
                    yield "Older post are available in the "
                    a(href:"${config.site_contextPath}${config.archive_file}","archive")
                }
            }

        }
