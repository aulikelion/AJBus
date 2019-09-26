class HomeController < ApplicationController
  def index
    @stationInfo = [
      {
        "name" => "아주대.아주대학교병원", 
        "items" => [
          { "id" => "BS72693", "direction" => "상행(서울,성남,북수원방향)" },
          { "id" => "BS72549", "direction" => "하행(삼거리방향)" }
        ]
      },
      {
        "name" => "아주대학교입구", 
        "items" => [
          { "id" => "BS72694", "direction" => "상행(학교정문방향)" },
          { "id" => "BS72548", "direction" => "하행(삼거리방향)" }
        ]
      },
      {
        "name" => "아주대삼거리", 
        "items" => [
          { "id" => "BS72616", "direction" => "(우리은행앞) 남문,지동방향" },
          { "id" => "BS72796", "direction" => "매탄지구,용인방향" },
          { "id" => "BS331629", "direction" => "(시외버스전용) 영통입구방향" }
        ]
      },
      {
        "name" => "아주대학교도서관", 
        "items" => [
          { "id" => "BS320880", "direction" => "기숙사방향" },
          { "id" => "BS320876", "direction" => "병원방향" }
        ]
      },
      {
        "name" => "아주대학교생활관/팔달관", 
        "items" => [
          { "id" => "BS320881", "direction" => "광교방향" },
          { "id" => "BS320875", "direction" => "도서관방향" }
        ]
      },
      {
        "name" => "광교중앙.아주대역환승센터(지하1층)", 
        "items" => [
          { "id" => "BS310452", "direction" => "광교푸르지오월드마크방향" },
          { "id" => "BS310453", "direction" => "광교호수공원방향" }
        ]
      },
      {
        "name" => "창현고교.아주대학교.유신고교", 
        "items" => [
          { "id" => "BS72583", "direction" => "상행(서울,성남,북수원방향)" },
          { "id" => "BS72604", "direction" => "하행(아주대삼거리방향)" }
        ]
      },
      {
        "name" => "아주대학교병원(마을버스)", 
        "items" => [
          { "id" => "BS320879", "direction" => "광교중앙역.광교호반마을방향" },
          { "id" => "BS320877", "direction" => "우만동.지동방향" }
        ]
      },
      {
        "name" => "아주대병원", 
        "items" => [
          { "id" => "BS72788", "direction" => "정문방향" },
          { "id" => "BS72787", "direction" => "광교.법원사거리방향" }
        ]
      },
      {
        "name" => "광교에듀타운입구.아주대.한국자산관리공사", 
        "items" => [
          { "id" => "BS161009", "direction" => "광교방향" },
          { "id" => "BS161010", "direction" => "병원방향" }
        ]
      },
    ]
  end
end
