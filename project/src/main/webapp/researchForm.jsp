<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    
    <h2> 맞춤 캠핑 찾아보기! </h2>
    <form action="research.jsp" method="post"></form>
    <table>
        <tr>
            <td>Q1. 연령대가 어떻게 되세요? </td>
            <td>
                <input type="radio" name="Q1" id="Q1_1" value="20대"> 20대
                    <input type="radio" name="Q1" id="Q1_2" value="30대"> 30대
                    <input type="radio" name="Q1" id="Q1_3" value="40대"> 40대
            </td>
       	 <br><br>
        </tr><br>
        <tr><br>
            <td>Q2. 어떤 뷰를 원해요??<br></td>
            <td><br>
                <input type="radio" name="Q2" id="Q2_1" value="mountain"> 산
                    <input type="radio" name="Q2" id="Q2_2" value="ocean"> 바다
                   <input type="radio" name="Q2" id="Q2_1" value=" countryside"> 촌캉스
                    <input type="radio" name="Q2" id="Q2_2" value="city"> 도심
            </td>
            	
        </tr>
        <tr><br>
            <td>Q3. 누구와 함께 하나요?<br> </td>
            <td>
                <input type="checkbox" name="Q3" value="family"> 가족
                            <input type="checkbox" name="Q3" value="friend"> 친구
                    <input type="checkbox" name="Q3" value="Macaron"> 연인
                            <input type="checkbox" name="Q3"   value="caravan"> 솔로
                            <input type="checkbox" name="Q3"  value="glamping"> 회사 동료

            </td>
        </tr>
           <tr><br>
            <td>Q4. 어떤 캠핑을 즐기고 싶으세요??<br> </td>
            <td>
               <input type="radio" name="Q4" id="Q4_1" value="caravan"> 카라반
                <input type="radio" name="Q4" id="Q4_2" value="glamping"> 글램핑
            </td>
        </tr>
        	<tr><br>
            <td>Q5. 이번 여행의 컨셉은?<br> </td>
            <td>
                <input type="checkbox" name="Q5" id="Q5_1" value="caravan"> #힐링
                <input type="checkbox" name="Q5" id="Q5_2" value="glamping"> #먹방
                <input type="checkbox" name="Q5" id="Q5_3" value="caravan"> #사진
                <input type="checkbox" name="Q5" id="Q5_4" value="glamping"> #핫플
            </td>
        </tr>
        <tr><br>
            <td>Q6. 어떤 정보를 주로 알고싶나요??<br></td>
            <td>
                <input type="radio" name="Q6" id="Q6_1" value="tip"> 꿀팁
                <input type="radio" name="Q6" id="Q6_2" value="spot"> 스팟 정보
                <input type="radio" name="Q6" id="Q6_3" value="hotple"> 요즘 핫플
                <input type="radio" name="Q6" id="Q6_4" value="convenience"> 편의성
                <input type="radio" name="Q6" id="Q6_4" value="campingfood"> 캠핑음식 
            </td>
        </tr>
        
        <tr> <br>
            <td>Q7. 어느 계절에 떠나나요??<br></td>
            <td>
                <input type="checkbox" name="Q7" id="Q7_1" value="spring"> 봄
                <input type="checkbox" name="Q7" id="Q7_2" value="summer"> 여름
                <input type="checkbox" name="Q7" id="Q7_3" value="fall"> 가을
                <input type="checkbox" name="Q7" id="Q7_4" value="winter"> 겨울
            </td>
        </tr>
        
        <tr align ="center">
            <td><button type="submit" >Submit</button></td>
            <td><button type="reset">Reset</button></td>

        </tr>
    </table>
</form>




</body>

</html>