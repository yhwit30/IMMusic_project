<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTIST TEST"></c:set>
<%@ include file="../common/head.jspf"%>

<style>
section {
  width: 100%;
  height: 100vh;
}

.swiper-container {
  width: 100%;
  height: 100%;
}

.slide {
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  text-align: center;
  font-size: 18px;
  background: #fff;
  overflow: hidden;
}

.slide-image {
  position: absolute;
  top: -200px;
  left: -200px;
  width: calc(100% + 400px);
  height: calc(100% + 400px);
  background-position: 50% 50%;
  background-size: cover;
}

.slide-title {
  font-size: 4rem;
  line-height: 1;
  max-width: 50%;
  white-space: normal;
  word-break: break-word;
  color: #FFF;
  z-index: 100;
  font-family: 'Oswald', sans-serif;
  text-transform: uppercase;
  font-weight: normal;
}

.slide-title span {
  white-space: pre;
  display: inline-block;
  opacity: 0;
}

@media (min-width: 45em) {
  .slide-title {
    font-size: 7vw;
    max-width: none;
  }
}

.slideshow {
  position: relative;
}

.slideshow-pagination {
  position: absolute;
  bottom: 5rem;
  left: 0;
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  transition: .3s opacity;
  z-index: 10;
}

.slideshow-pagination-item {
  display: flex;
  align-items: center;
}

.pagination-number {
  font-size: 1.8rem;
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  padding: 0 0.5rem;
}

.pagination-separator {
  display: none;
}

@media (min-width: 45em) {
  .pagination-separator {
    display: block;
  }
}

.pagination-separator {
  position: relative;
  width: 40px;
  height: 2px;
  background: rgba(255, 255, 255, 0.25);
  transition: all .3s ease;
}

.pagination-separator-loader {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #FFF;
  transform-origin: 0 0;
}

</style>

<script>
//The Slideshow class.
class Slideshow {
    constructor(el) {
        
        this.DOM = {el: el};
      
        this.config = {
          slideshow: {
            delay: 3000,
            pagination: {
              duration: 3,
            }
          }
        };
        
        // Set the slideshow
        this.init();
      
    }
    init() {
      
      var self = this;
      
      // Charmed title
      this.DOM.slideTitle = this.DOM.el.querySelectorAll('.slide-title');
      this.DOM.slideTitle.forEach((slideTitle) => {
        charming(slideTitle);
      });
      
      // Set the slider
      this.slideshow = new Swiper (this.DOM.el, {
          
          loop: true,
          autoplay: {
            delay: this.config.slideshow.delay,
            disableOnInteraction: false,
          },
          speed: 500,
          preloadImages: true,
          updateOnImagesReady: true,
          
          // lazy: true,
          // preloadImages: false,

          pagination: {
            el: '.slideshow-pagination',
            clickable: true,
            bulletClass: 'slideshow-pagination-item',
            bulletActiveClass: 'active',
            clickableClass: 'slideshow-pagination-clickable',
            modifierClass: 'slideshow-pagination-',
            renderBullet: function (index, className) {
              
              var slideIndex = index,
                  number = (index <= 8) ? '0' + (slideIndex + 1) : (slideIndex + 1);
              
              var paginationItem = '<span class="slideshow-pagination-item">';
              paginationItem += '<span class="pagination-number">' + number + '</span>';
              paginationItem = (index <= 8) ? paginationItem + '<span class="pagination-separator"><span class="pagination-separator-loader"></span></span>' : paginationItem;
              paginationItem += '</span>';
            
              return paginationItem;
              
            },
          },

          // Navigation arrows
          navigation: {
            nextEl: '.slideshow-navigation-button.next',
            prevEl: '.slideshow-navigation-button.prev',
          },

          // And if we need scrollbar
          scrollbar: {
            el: '.swiper-scrollbar',
          },
        
          on: {
            init: function() {
              self.animate('next');
            },
          }
        
        });
      
        // Init/Bind events.
        this.initEvents();
        
    }
    initEvents() {
        
        this.slideshow.on('paginationUpdate', (swiper, paginationEl) => this.animatePagination(swiper, paginationEl));
        //this.slideshow.on('paginationRender', (swiper, paginationEl) => this.animatePagination());

        this.slideshow.on('slideNextTransitionStart', () => this.animate('next'));
        
        this.slideshow.on('slidePrevTransitionStart', () => this.animate('prev'));
            
    }
    animate(direction = 'next') {
      
        // Get the active slide
        this.DOM.activeSlide = this.DOM.el.querySelector('.swiper-slide-active'),
        this.DOM.activeSlideImg = this.DOM.activeSlide.querySelector('.slide-image'),
        this.DOM.activeSlideTitle = this.DOM.activeSlide.querySelector('.slide-title'),
        this.DOM.activeSlideTitleLetters = this.DOM.activeSlideTitle.querySelectorAll('span');
      
        // Reverse if prev  
        this.DOM.activeSlideTitleLetters = direction === "next" ? this.DOM.activeSlideTitleLetters : [].slice.call(this.DOM.activeSlideTitleLetters).reverse();
      
        // Get old slide
        this.DOM.oldSlide = direction === "next" ? this.DOM.el.querySelector('.swiper-slide-prev') : this.DOM.el.querySelector('.swiper-slide-next');
        if (this.DOM.oldSlide) {
          // Get parts
          this.DOM.oldSlideTitle = this.DOM.oldSlide.querySelector('.slide-title'),
          this.DOM.oldSlideTitleLetters = this.DOM.oldSlideTitle.querySelectorAll('span'); 
          // Animate
          this.DOM.oldSlideTitleLetters.forEach((letter,pos) => {
            TweenMax.to(letter, .3, {
              ease: Quart.easeIn,
              delay: (this.DOM.oldSlideTitleLetters.length-pos-1)*.04,
              y: '50%',
              opacity: 0
            });
          });
        }
      
        // Animate title
        this.DOM.activeSlideTitleLetters.forEach((letter,pos) => {
					TweenMax.to(letter, .6, {
						ease: Back.easeOut,
						delay: pos*.05,
						startAt: {y: '50%', opacity: 0},
						y: '0%',
						opacity: 1
					});
				});
      
        // Animate background
        TweenMax.to(this.DOM.activeSlideImg, 1.5, {
            ease: Expo.easeOut,
            startAt: {x: direction === 'next' ? 200 : -200},
            x: 0,
        });
      
        //this.animatePagination()
    
    }
    animatePagination(swiper, paginationEl) {
            
      // Animate pagination
      this.DOM.paginationItemsLoader = paginationEl.querySelectorAll('.pagination-separator-loader');
      this.DOM.activePaginationItem = paginationEl.querySelector('.slideshow-pagination-item.active');
      this.DOM.activePaginationItemLoader = this.DOM.activePaginationItem.querySelector('.pagination-separator-loader');
      
      console.log(swiper.pagination);
      // console.log(swiper.activeIndex);
      
      // Reset and animate
        TweenMax.set(this.DOM.paginationItemsLoader, {scaleX: 0});
        TweenMax.to(this.DOM.activePaginationItemLoader, this.config.slideshow.pagination.duration, {
          startAt: {scaleX: 0},
          scaleX: 1,
        });
      
      
    }
    
}

const slideshow = new Slideshow(document.querySelector('.slideshow'));

</script>


<section>
  
  <div class="swiper-container slideshow">
    
    <div class="swiper-wrapper">
      
        <div class="swiper-slide slide">
          <div class="slide-image" style="background-image: url(https://images.unsplash.com/photo-1538083024336-555cf8943ddc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66b476a51b19889e13182c0e4827af18&auto=format&fit=crop&w=1950&q=80)"></div>
          <span class="slide-title">Exotic places</span>
        </div>
      
        <div class="swiper-slide slide">
          <div class="slide-image" style="background-image: url(https://images.unsplash.com/photo-1500375592092-40eb2168fd21?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e07d2457879a4e15577ec75a31023e47&auto=format&fit=crop&w=2134&q=80"></div>
          <span class="slide-title">Meet ocean</span>
        </div>
      
      <div class="swiper-slide slide">
          <div class="slide-image" style="background-image: url(https://images.unsplash.com/photo-1482059470115-0aadd6bf6834?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=267bba9a4e280ec64388fe8fb01e9d1b&auto=format&fit=crop&w=1950&q=80"></div>
          <span class="slide-title">Around the world</span>
        </div>
      
<!--         <div class="swiper-slide slide">
          <div class="slide-imageswiper-lazy" data-background="https://images.unsplash.com/photo-1538083024336-555cf8943ddc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66b476a51b19889e13182c0e4827af18&auto=format&fit=crop&w=1950&q=80">
          </div>
          </div>
          <span class="slide-title">Exotic places</span>
        </div>
      
        <div class="swiper-slide slide">
          <div class="slide-image swiper-lazy" data-background="https://images.unsplash.com/photo-1500375592092-40eb2168fd21?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e07d2457879a4e15577ec75a31023e47&auto=format&fit=crop&w=2134&q=80">
          </div>
          <span class="slide-title">Meet ocean</span>
        </div>
      
        <div class="swiper-slide slide">
          <div class="slide-image swiper-lazy" data-background="https://images.unsplash.com/photo-1482059470115-0aadd6bf6834?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=267bba9a4e280ec64388fe8fb01e9d1b&auto=format&fit=crop&w=1950&q=80">
          </div>
          <span class="slide-title">Around the world</span>
        </div> -->
        
    </div>
    
    <div class="slideshow-pagination"></div>
    
    <div class="slideshow-navigation">
        <div class="slideshow-navigation-button prev"><span class="fas fa-chevron-left"></span></div>
        <div class="slideshow-navigation-button next"><span class="fas fa-chevron-right"></span></div>
    </div>
    
  </div>
  
</section>





<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>