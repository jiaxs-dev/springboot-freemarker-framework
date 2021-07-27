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
    <style rel="stylesheet" type="text/css">
        .admin-header-wide {
            padding: 0 120px;
        }

        .admin-header {
            padding: 0;
            z-index: 2;
            box-shadow: rgb(0 0 0 / 15%) 0px 2px 8px;
            position: relative;
            background: #f5f5f5;
        }

        .logo {
            height: 64px;
            line-height: 64px;
            vertical-align: top;
            display: inline-block;
            cursor: pointer;
            font-size: 20px;
        }

        .logo > img {
            vertical-align: middle;
        }

        .logo > h1 {
            display: inline-block;
            font-size: 20px;
            padding-left: 20px;
            font-weight: 600;
            vertical-align: top;
            color: #0b0b0b;
        }
    </style>
</head>
<body>
<div id="app" style="min-height: 100%;width: 100%;overflow-y: auto">
    <a-layout class="admin-layout">
        <a-layout-header class="light admin-header">
            <div class="admin-header-wide side">
                <a class="logo" href="http://bdc.bigdata.dongao.com">
                    <img width="22" src="/static/image/logo_dandu.png"/>
                    <h1>{{systemName}}</h1>
                </a>
            </div>

        </a-layout-header>

        <a-layout-content class="workspace-layout-content">
            <div :style="{minHeight: minHeight+'px',position: 'relative'}">
            </div>
        </a-layout-content>

        <a-layout-footer style="padding: 0 50px">
            <div class="footer" style="padding: 0 16px;margin: 20px 0 20px;text-align: center">
                <div class="copyright" style="font-size: 14px;color: rgba(0, 0, 0, 0.45)">
                    Copyright
                    <a-icon type="copyright"></a-icon>
                    {{copyright}}
                </div>
            </div>
        </a-layout-footer>
    </a-layout>
</div>

</body>
<script>
    const minHeight = window.innerHeight - 64 - 61;
    const mianContent = new Vue({
        el: "#app",
        data: {
            systemName: '大数据中台',
            footerLinks: [],
            copyright: new Date().getFullYear() + ' 东奥大数据',
            minHeight: minHeight,
        },
        methods: {
            getRandomValue: function () {
                this.inputValue = Math.random();
            }
        }
    })
</script>
</html>