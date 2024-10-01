const basePath = 'http://localhost:3000/api/';
// http get
function httpGet(path, query) {
    return new Promise(resolve => {
        let xhr = new XMLHttpRequest();
        xhr.open('get', basePath + path + '?' + new URLSearchParams(query).toString(), true);
        xhr.send();
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status == 200) {
                resolve(JSON.parse(xhr.responseText));
            }
        }
    });
}