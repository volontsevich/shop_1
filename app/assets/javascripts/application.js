// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .

$(document).ready(
    $(function () {

        //Searching max price value in current page
        var max = 0;
        if (!window.location.href.contains("amount="))
            $(".price").each(function () {
                m = parseFloat($(this).text());
                if (m >= max) {
                    max = m;
                }
            })
        else {
            cur_url = window.location.href + "";
            cur_url = cur_url.replace(/[^$]+[$]\d+[.]?\d*-[$]/, "");
            cur_url = cur_url.replace(/[&].*/, "");
            max = parseFloat(cur_url);
        }

        $("#slider-range").slider({
            range: true,
            min: 0,
            step: 0.01,
            max: max + 0.01,
            values: [0, max + 0.01],
            slide: function (event, ui) {
                $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
            },

            //Setting href of Filter price button
            stop: function (event, ui) {
                var path = window.location.href;
                if (!path.contains("?")) path += "?"
                else if (!path.contains("amount="))path += "&"
                else
                    path = window.location.pathname + "?";
                $("#ssilka").attr("href", path + "amount=$" + ui.values[0] + "-$" + ui.values[1]);
            }
        });

        $("#amount").val("$" + $("#slider-range").slider("values", 0) +
            " - $" + $("#slider-range").slider("values", 1));

        //Setting href of Filter price button
        var path = window.location.href;
        if (!path.contains("?")) path += "?"
        else if (!path.contains("amount="))path += "&"
        else
            path = window.location.pathname + "?";
        $("#ssilka").attr("href", path + "amount=$" + $("#slider-range").slider("values", 0) +
            "-$" + $("#slider-range").slider("values", 1));
    })
)