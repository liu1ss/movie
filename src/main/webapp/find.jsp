<%--
  Created by IntelliJ IDEA.
  User: 文博
  Date: 2020/10/14
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="common/common.jsp"%>
</head>
<body>
<center>
    <div id="app">
        <template>
            <el-table
                    :data="tableData"
                    style="width: 100%"
                    :row-class-name="tableRowClassName">
                <el-table-column
                        prop="movieid"
                        label="序号"
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="moviename"
                        label="姓名"
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="movielang"
                        label="时长"
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="moviescore"
                        label="评价"
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="moviedesc"
                        label="简介"
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="type.Typename"
                        label="电影类型"
                        width="180">
                </el-table-column>
                <el-table-column
                        label="操作"
                        width="200">
                    <!--靠右-->
                    <!--fixed="right"-->
                    <template slot-scope="scope">
                        <el-button @click="compileClick(scope.row)" size="small">编辑</el-button>
                    </template>
                </el-table-column>
                <el-table-column width="160">
                    <template slot="header" slot-scope="scope">
                        <el-button @click="addroles()" type="primary">添加</el-button>
                    </template>
                </el-table-column>
            </el-table>
        </template>
    </div>
</center>
<script>
    v1= new Vue({
        el:"#app",
        data(){
            return{
                tableData:[{}]
            }
        },created(){
            this.show();
        },
        methods:{
            tableRowClassName({row, rowIndex}) {
                if (rowIndex === 1) {
                    return 'warning-row';
                } else if (rowIndex === 3) {
                    return 'success-row';
                }
                return '';
            },
            show:()=>{
            axios.post("find").then((response)=>{
            v1.tableData=response.data;
            alert(JSON.stringify(v1.tableData))
    // for (var i=0;i<v1.tableData.length;i++)
    // {
    //     if(v1.tableData[i].status===1)
    //     {
    //         v1.tableData[i].status="正常"
    //     }
    //     else
    //     {
    //         v1.tableData[i].status="禁止"
    //     }
    // }
    });
    },
    //编辑
    compileClick(row){
        //alert(JSON.stringify(row))
        alert(JSON.stringify(row))
    },
    addroles(){
        window.location="";
    },
    },
    });
</script>
</body>
<style>
    .el-table .warning-row {
        background: oldlace;
    }

    .el-table .success-row {
        background: #f0f9eb;
    }
</style>
</html>
