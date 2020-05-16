https://www.youtube.com/watch?v=fYq5PXgSsbE
container里面的元素居中 外部container
.container{
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;// 正常换行
}
html,body {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: row;/*这里可以不写，flex布局默认方向横向即row*/
            justify-content: center;
            align-items: center;
}
.container {
    display: flex ;       //可以有两种取值
     flex-direction: row | row-reverse | column | column-reverse;  //row水平排列
}
.container {
    flex-wrap: nowrap | wrap | wrap-reverse;
}
默认值：nowrap 不换行，即当主轴尺寸固定时，当空间不足时，项目尺寸会随之调整而并不会挤到下一行。
wrap：项目主轴总尺寸超出容器时换行，第一行在上方
wrap-reverse：换行，第一行在下方

.container {
    justify-content: flex-start | flex-end | center | space-between | space-around;
}
默认值: flex-start 左对齐
flex-end：右对齐
center：居
space-between：两端对齐，项目之间的间隔相等，即剩余空间等分成间隙。
space-around：每个项目两侧的间隔相等，所以项目之间的间隔比项目与边缘的间隔大一倍。


.container {
    align-content: flex-start | flex-end | center | space-between | space-around | stretch;
}

当你 flex-wrap 设置为 nowrap 的时候，容器仅存在一根轴线，因为项目不会换行，就不会产生多条轴线。
当你 flex-wrap 设置为 wrap 的时候，容器可能会出现多条轴线，这时候你就需要去设置多条轴线之间的对齐方式了。
建立在主轴为水平方向时测试，即 flex-direction: row, flex-wrap: wrap
默认值为 stretch，看下面的图就很好理解了

.container{
  display: flex ; 
  flex-direction: row;
  flex-wrap:wrap;
  align-content:space-around;
}


--------------------------------

Flex是Flexible Box的缩写，意为"弹性布局"，用来为盒状模型提供最大的灵活性。设为Flex布局以后，子元素的float、clear和vertical-align属性将失效。

任何一个容器都可以指定为Flex布局。

#box{
    display: flex;
    width: 500px;
    height: 300px;
    border: 10px solid red;
}

一：有六个属性设置在box父容器上，来控制子元素的显示方式；分别是：
flex-direction    设置主轴对齐方式  默认 row  x轴从左到右；
flex-wrap   子元素换行的方式  默认nowrap ；
flex-flow   flex-direction和flex-wrap的简写 默认row nowrap；
justify-content  子元素的对齐方式  默认flex-start  左对齐
align-items   
align-content
  1、flex-direction 决定主轴的对齐方向，分别有四个属性：       

row（默认值）：主轴为水平方向，起点在左端。   
row-reverse：主轴为水平方向，起点在右端。
column：主轴为垂直方向，起点在上沿。
column-reverse：主轴为垂直方向，起点在下沿。
复制代码
#box{
        display: flex;
        flex-direction: row;
}
.inner{
        width: 100px;
        height: 100px;
        background: #8a4182;
        margin: 10px;

}
复制代码
<div id="box">
    <div class="inner"></div>
    <div class="inner"></div>
    <div class="inner"></div>
</div>
  

        例如上面代码，主轴就是x轴横向的；起点在左端，从左到右排列；

2.  flex-wrap ：定义子元素超过一行，如何换行，分别有三个属性：

nowrap（默认值）：默认不换行。   
wrap：换行，第二行在第一行下面，从左到右
wrap-reverse：换行，第二行在第一行上面，从左到右；
   2.1  nowrap：不换行，如果子元素超过父元素的宽度或者高度，会自动在主轴方向压缩

   下面的例子，主轴是x轴，默认不换行，但是父元素的宽度是500，子元素明显大于父元素宽度，会默认宽度变窄；

#box{
        display: flex;
        flex-direction: row;
        width: 500px;
        border: 1px solid red;
}


   2.2  wrap：换行，正常的折行          

#box{
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
}


   2.3 wrap-reverse  第二行在第一行上方；        

#box{
        display: flex;
        flex-direction: row;
        flex-wrap: wrap-reverse;
}


3. flex-flow:是flex-direction 和flex-wrap的简写形式，默认是 row  nowrap

    flex-flow：flex-direction|flex-wrap ；

4. justify-content:  子元素在主轴对齐方式

flex-start（默认值）：左对齐
flex-end：右对齐
center： 居中
space-between：两端对齐，项目之间的间隔都相等。
space-around：每个项目两侧的间隔相等。所以，项目之间的间隔比项目与边框的间隔大一倍。
    flex-start和flex-end，center这三个都比较简单，主要区分开下面的space-between和space-around；

    space-between：两端对齐，

    

   space-around：

  

5  align-items：交叉轴如何对齐，如果flex-direction：row和row-reverse  那么交叉轴就是y轴，如果是column和column-reverse那么交叉轴是x轴

flex-start：交叉轴的起点对齐。
flex-end：交叉轴的终点对齐。
center：交叉轴的中点对齐。
baseline: 项目的第一行文字的基线对齐。
stretch（默认值）：如果项目未设置高度或设为auto，将占满整个容器的高度。
     baseline:以第一个子元素文字的基线对齐

    

  stretch:子元素不设置高度，那么高度将沾满整个父元素

     

 

6. align-content:属性定义了多根轴线的对齐方式。如果项目只有一根轴线，该属性不起作用。

flex-start：与交叉轴的起点对齐。
flex-end：与交叉轴的终点对齐。
center：与交叉轴的中点对齐。
space-between：与交叉轴两端对齐，轴线之间的间隔平均分布。
space-around：每根轴线两侧的间隔都相等。所以，轴线之间的间隔比轴线与边框的间隔大一倍。
stretch（默认值）：轴线占满整个交叉轴。
二   有六个属性设置在子元素项目上：     
order
flex-grow
flex-shrink
flex-basis
flex
align-self
1.  order  子元素排列的位置默认是按照html先后顺序来排列的，html结构谁在前面默认就排列在前面；order的作用就是改变子元素排列顺序

     order：默认（0） 值越小越靠前，

     

复制代码
<div id="box">
    <div class="inner item">1</div>
    <div class="inner">2</div>
    <div class="inner">3</div>
    <div class="inner">4</div>
    <div class="inner">5</div>
</div>
复制代码
.inner:nth-child(5){
        order: -1;
}


2.flex-grow  放大比例  默认是0   当有放大空间的时候，值越大，放大的比例越大

   flex-grow：0

 .inner:nth-child(1){
      flex-grow: 1;
    }
 



3.flex-shrink:缩小比例  默认是1  值越大，缩小的时候比例越小；

1
2
3
4
.inner:nth-child(5){
       order: -1;
       flex-shrink:24;
 }
 

4.flex-basis  属性定义了在分配多余空间之前，项目占据的主轴空间（main size）。浏览器根据这个属性，计算主轴是否有多余空间。它的默认值为auto，即项目的本来大小。

  flex-basis：200px  ，如果项目有多余的空间，设置为200px。那么会放大到200的宽度；


5. flex属性是flex-grow, flex-shrink 和 flex-basis的简写，默认值为0 1 auto。后两个属性可选。

 

6.align-self属性允许单个项目有与其他项目不一样的对齐方式，可覆盖align-items属性。默认值为auto，表示继承父元素的align-items属性，如果没有父元素，则等同于stretch。

.item {
  align-self: auto | flex-start | flex-end | center | baseline | stretch;
}
 

  除了auto是表示继承父元素，其他的跟align-items是一样的。

 
