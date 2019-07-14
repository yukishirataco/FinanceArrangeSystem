function ma(sharestream_id, sharestream_no) {
    if (confirm("确认删除吗?")) {
        location.href = "DeleteSSIServlet?sharestream_id=" + sharestream_id + "&sharestream_no=" + sharestream_no;
    }

}

function mb(shareaccount_id) {
    if (confirm("确认删除吗?")) {
        location.href = "DeleteServlet?shareaccount_id=" + shareaccount_id;
    }

}

function deleteUser(shareaccount_id) {
    if (confirm("确认删除吗?")) {
        location.href = "AdminDeleteServlet?id=" + shareaccount_id;
    }

}
