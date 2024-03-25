// 더보기 버튼 클릭 시 실행되는 함수
document.getElementById('moreButton').onclick = function() {
    // 추가적인 태그들을 생성하여 추가합니다.
    addMoreListItems(3); // 3개의 아이템을 추가
};

// 추가적인 태그들을 생성하여 추가하는 함수
function addMoreListItems(numberOfItemsToAdd) {
    var linkList = document.getElementById('linkList');
    // 현재 총 아이템의 개수
    var currentItemCount = document.querySelectorAll('#linkList .liquor-item').length;

    for (var i = 0; i < numberOfItemsToAdd; i++) {
        // 새로운 .liquor-item div 생성
        var newItem = document.createElement('div');
        newItem.className = 'liquor-item'; // 이전에 설정한 CSS 클래스를 사용

        // 새로운 아이템 내용 생성
        var img = document.createElement('img');
        // 이미지 설정 (필요하다면 소스 경로를 설정하세요)
        img.src = 'images/placeholder.jpg'; // 'placeholder.jpg'를 적절한 이미지 경로로 변경하세요
        img.alt = 'Liquor Image'; // 대체 텍스트 설정
        img.style.width = '100px'; // 이미지 크기 설정
        img.style.height = 'auto';

        var h3 = document.createElement('h3');
        var linkWrapper = document.createElement('a');
        linkWrapper.href = 'javascript:void(0);'; // 클릭해도 아무 일도 일어나지 않도록 설정
        var page_number = currentItemCount + i + 1;
        linkWrapper.textContent = page_number + '번째 아이템';
        
        h3.appendChild(linkWrapper);

        // 각 요소를 newItem에 추가
        newItem.appendChild(img);
        newItem.appendChild(h3);

        // linkList에 새로운 .liquor-item 추가
        linkList.appendChild(newItem);
    }
}