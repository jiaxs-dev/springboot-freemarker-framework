<!DOCTYPE html>
<head>
    <title>SpringBoot + Freemarker</title>
    <link rel="shortcut icon" href="/static/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="/static/plugins/antd-vue-1.7.3/antd.min.css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="http://cdn.staticfile.org/moment.js/2.24.0/moment.min.js"></script>
    <script src="/static/plugins/jquery-3.5.1.js"></script>
    <script src="/static/plugins/vue-2.6.11.js"></script>
    <script src="/static/plugins/antd-vue-1.7.3/antd.min.js"></script>

</head>
<body>
<div id="mainContent">
    <h1>Hello boy,</h1><br>
    <a-button @click="loadMessages" type="primary">
        Primary
    </a-button>
    <a-tag color="pink">
        pink
    </a-tag>
    <p id="message" @click="loadMessages" style="cursor: pointer">{{message}}</p>
    <a href="/login" style="cursor: pointer">登陆页面</a>

    <a-timeline>
        <a-timeline-item>Create a services site 2015-09-01</a-timeline-item>
        <a-timeline-item>Solve initial network problems 2015-09-01</a-timeline-item>
        <a-timeline-item>Technical testing 2015-09-01</a-timeline-item>
        <a-timeline-item>Network problems being solved 2015-09-01</a-timeline-item>
    </a-timeline>
    <a-tooltip placement="left" title="Prompt Text" :get-popup-container="getPopupContainer">
        <a-button>Adjust automatically / 自动调整</a-button>
    </a-tooltip>
    <a-progress type="circle" :percent="75" />
</div>
<script>
    const mainContent = new Vue({
        el: "#mainContent",
        data: {
            message: 'welcome to index page !',
            spinning: false
        },
        mounted() {
            // this.loadMessages();
        },
        methods: {
            loadMessages: function () {
                getMessage();
            },
            getPopupContainer: function(trigger) {
                return trigger.parentElement;
            },
            onChange: function(){

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