layout 'layout/main.tpl', true,
        bodyContents: contents {

            div(class:"row"){
                div(class:"small-12 columns"){
                    article(class:"wrap"){
                        header{
                            div(class:"row"){
                                div(class:"small-3 medium-1 large-1 columns"){
                                    div(class:"termin"){
                                        div(class:"month","${content.date?.format("MMM")}")
                                        div(class:"date","${content.date?.format("dd")}")
                                        div(class:"year","${content.date?.format("yyyy")}")
                                    }
                                }

                                div(class:"small-9 medium-11 large-11 columns"){

                                    div{
                                        h2("${content.title}")
                                        p{
                                            content.tags.each { tag ->
                                                tag = tag.trim()

                                                span{
                                                    a(href:"${config.site_contextPath}tags/${tag.replace(' ','-')}.html", class:"label","${tag}")
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
                                yieldUnescaped content.body
                            }
                        }

                    }
                }
            }
        }
