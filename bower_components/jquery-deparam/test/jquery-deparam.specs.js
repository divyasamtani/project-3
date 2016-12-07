var should = require('chai').should();
var deparam = require('../jquery-deparam');

describe('jquery-deparam', function(){
    it('loads through CommonJS', function(){
        require('../jquery-deparam').should.be.a('function');
    });
    it('deserializes 1.4-style params', function(){
        var paramStr = 'a[]=4&a[]=5&a[]=6&b[x][]=7&b[y]=8&b[z][]=9&b[z][]=0&b[z][]=true&b[z][]=false&b[z][]=undefined&b[z][]=&c=1';
        var paramsObj = { a:['4','5','6'], b:{x:['7'], y:'8', z:['9','0','true','false','undefined','']}, c:'1' };
        deparam(paramStr).should.deep.equal(paramsObj);
    });
    it('deserializes pre-1.4-style params', function(){
        var paramStr = 'a=1&a=2&a=3&b=4&c=5&c=6&c=true&c=false&c=undefined&c=&d=7';
        var paramsObj = { a:['1','2','3'], b:'4', c:['5','6','true','false','undefined',''], d:'7' };
        deparam(paramStr).should.deep.equal(paramsObj);
    });
    it('deserializes pre1.4-style params with coercion', function(){
        var paramStr = 'a=1&a=2&a=3&b=4&c=5&c=6&c=true&c=false&c=undefined&c=&d=7';
        var paramsObj = { a:[1,2,3], b:4, c:[5,6,true,false,undefined,''], d:7 };
        deparam(paramStr, true).should.deep.equal(paramsObj);
    });
});

