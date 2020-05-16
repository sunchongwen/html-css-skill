container里面的元素居中 外部container
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
