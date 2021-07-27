<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Title</title>

    <link rel="shortcut icon" href="/static/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="/static/plugins/antd-vue-1.7.3/antd.min.css"/>

    <script src="http://cdn.staticfile.org/moment.js/2.24.0/moment.min.js"></script>
    <script src="/static/plugins/jquery-3.5.1.js"></script>
    <script src="/static/plugins/vue-2.6.11.js"></script>
    <script src="/static/plugins/antd-vue-1.7.3/antd.min.js"></script>
</head>
<body>
<div id="app" style="min-height: 100%;width: 100%;overflow-y: auto">
    <a-row>
        <a-col :span="4">
            <a-input v-model="inputValue"></a-input> <a-button @click="getRandomValue">点我生成随机值</a-button>
        </a-col>
    </a-row>
</div>

</body>
<script>
    const mianContent = new Vue({
        el:"#app",
        data:{
            inputValue:'我是初始值'
        },
        methods:{
            getRandomValue: function(){
                this.inputValue =  Math.random();
            }
        }
    })
</script>
</html>