<!DOCTYPE html>
<head>
    <title>SpringBoot + Freemarker</title>
    <link rel="shortcut icon" href="/static/favicon.ico"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="/static/plugins/jquery-3.5.1.js"></script>
    <script src="/static/plugins/vue-2.6.11.js"></script>
</head>
<body>
<div id="mainContent">
    <h1>Hello boy,</h1><br>
    <p id="message" @click="loadMessages" style="cursor: pointer">{{message}}</p>
</div>
<script>
    const mainContent = new Vue({
        el: "#mainContent",
        data: {
            message: 'welcome to index page !'
        },
        mounted() {
            // this.loadMessages();
        },
        methods: {
            loadMessages: function () {
                getMessage();
            }
        }
    });

    function getMessage() {
        $.ajax({
            url: "/message",
            data: {
                userName: 'jiaxiansun',
                password: '654321'
            },
            type: 'GET',
            success: function (res) {
                mainContent.message = res;
            }
        })
    }

    // $("#message").click(function () {
    //     $.ajax({
    //         url: "/message",
    //         data: {
    //             userName: 'jiaxiansun',
    //             password: '654321'
    //         },
    //         type: 'GET',
    //         success: function (res) {
    //             console.log(res)
    //             $("#message").text(res)
    //         }
    //     })
    // })
</script>
</body>
</html>