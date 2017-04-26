window.onload = function(){
  getAllArticles('all','Article Listings');
};

function showDetail(article_ID){
  getAllArticles(article_ID,'Full Article View');
}

function getAllArticles(idarg,titlearg){
  var id = idarg || 'all';
  var title = titlearg || 'Article Listings';
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      var results = JSON.parse(this.responseText);

      var formatedresult = '';
      var formatedimages = '';
      if(id == 'all'){
        results.forEach(function(item, index){
          formatedresult += formatData(item);
        });
      }else{
        formatedresult = formatDetail(results);
      }
     formatedresult = '<ul>'+formatedresult+'</ul>';
     document.getElementById("demo").innerHTML = formatedresult;
     document.getElementById("pageTitle").innerHTML = title;
    }
  };
  xhttp.open("GET", "http://localhost/article/controller/ArticleController.php?id="+id, true);
  xhttp.send();
}


function formatData(item){
  var trimLength = 300;
  return '<li><header>'
          +item.article_title.toUpperCase()+
          '</header><hr><author>'
          +item.article_author+
          '</author>::'
          +item.article_date+
          '<article>'
          +item.article_content.substring(0, trimLength)+
          '...<a href="#" onclick="showDetail('+item.article_ID+')">Read More</a></article>'
          +'</li>';
}

function goBack(){
  getAllArticles('all','Article Listings');
}

function formatDetail(results){
  var item = results[0] || results;
  var returnstr= '<header>'
          +item.article_title.toUpperCase()+
          '</header><hr><author>'
          +item.article_author+
          '</author>::'
          +item.article_date+
          '<article>'
          +item.article_content+
          '</article><a href="#" onclick="getAllArticles()"><< Back</a><ul class="image_group">';
          // <a href="#" onclick="goBack()"><< Back</a>
  if(Array.isArray(results)){
    results.forEach(function(item, index){
      returnstr += '<li><img src="'+item.image_fullpath+'" /></li>'
    });
    returnstr += '</ul>';
  }

  return returnstr;
}
