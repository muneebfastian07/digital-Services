(function(){var e;e=jQuery,e.fn.sieve=function(t){var n;return n=function(e){var t,n,r,o;for(o=[],n=0,r=e.length;r>n;n++)(t=e[n])&&o.push(t);return o},this.each(function(){var r,o,i;return r=e(this),i=e.extend({searchInput:null,searchTemplate:"<div><label>Search: <input type='text'></label></div>",itemSelector:"tbody tr",textSelector:null,toggle:function(e,t){return e.toggle(t)},complete:function(){}},t),i.searchInput||(o=e(i.searchTemplate),i.searchInput=o.find("input"),r.before(o)),i.searchInput.on("keyup.sieve change.sieve",function(){var t,o;return o=n(e(this).val().toLowerCase().split(/\s+/)),t=r.find(i.itemSelector),t.each(function(){var t,n,r,c,l,a,u;for(n=e(this),i.textSelector?(t=n.find(i.textSelector),l=t.text().toLowerCase()):l=n.text().toLowerCase(),r=!0,a=0,u=o.length;u>a;a++)c=o[a],r&&(r=l.indexOf(c)>=0);return i.toggle(n,r)}),i.complete()})})}}).call(this);