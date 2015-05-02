<% include "header.gsp" %>
<% include "menu.gsp" %>
<main>
    <div class="row">
        <div class="small-12 columns">
            <section class="wrap">
                <header>
                    <h2>${content.title}</h2>

                    <time datetime="${content.date.format("yyyy-MM-dd")}">
                        <small> ${content.date.format("dd.MM.yyyy")} </small>
                    </time>

                    <hr/>
                </header>

                ${content.body}
            </section>
        </div>
    </div>
</main>
<% include "footer.gsp" %>
