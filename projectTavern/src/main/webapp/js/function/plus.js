
// 더보기 버튼 클릭 시 실행되는 함수
document.getElementById('moreButton').onclick = function() {
    // 추가적인 태그들을 생성하여 추가합니다.
    addMoreListItems(3); // 3개의 아이템을 추가
};

// 추가적인 태그들을 생성하여 추가하는 함수
function addMoreListItems(numberOfItemsToAdd) {
    var linkList = document.getElementById('linkList');
    // 현재 총 <li> 태그의 개수
    var currentItemCount = document.querySelectorAll('#linkList li').length;

    for (var i = 0; i < numberOfItemsToAdd; i++) {
        // 새로운 <li> 태그 생성
        var newItem = document.createElement('li');
        newItem.className = 'item' + (currentItemCount + i + 1);

        // 새로운 아이템 내용 생성
        var linkWrapper = document.createElement('a');
        var page_number = currentItemCount + i + 1;
        linkWrapper.href = 'liquor_list_' + page_number + '.jsp'; // 페이지 번호에 따라 주소 생성

        var div1 = document.createElement('div');
        var img = document.createElement('img');
        // 이미지 설정 (필요하다면 소스 경로를 설정하세요)
        img.src = '이미지_경로.jpg';
        div1.appendChild(img);

        var div2 = document.createElement('div');
        var p = document.createElement('p');
        p.textContent = page_number + '번째 아이템';
        div2.appendChild(p);

        linkWrapper.appendChild(div1);
        linkWrapper.appendChild(div2);

        newItem.appendChild(linkWrapper);

        // linkList에 새로운 <li> 태그 추가
        linkList.appendChild(newItem);
    }
}
