<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="Wondering_Stars_0"></a>Wondering Stars</h1>
<p class="has-line-data" data-line-start="1" data-line-end="2">Wondering Stars is an open source game made with Godot and with given by 2019 Nasa Space Challenge.</p>
<h4 class="code-line" data-line-start=3 data-line-end=4 ><a id="Goals_3"></a>Goals</h4>
<ul>
<li class="has-line-data" data-line-start="4" data-line-end="5">Create a Star that could eventually store a system</li>
<li class="has-line-data" data-line-start="5" data-line-end="6">Create a planet that could hypothetically coexist with the star given, using the latest Nasa information</li>
<li class="has-line-data" data-line-start="6" data-line-end="8">make it so the player can fail and learn from his mistakes, so every time he plays he will perfect the creation of the system, so he could eventually end up creating a possible and realistic System.</li>
</ul>
<h2 class="code-line" data-line-start=8 data-line-end=9 ><a id="New_Features_8"></a>New Features!</h2>
<ul>
<li class="has-line-data" data-line-start="10" data-line-end="11">We used the database <a href="https://exoplanetarchive.ipac.caltech.edu/">https://exoplanetarchive.ipac.caltech.edu/</a> and <a href="http://exoplanet.eu/catalog/">http://exoplanet.eu/catalog/</a> ,to try to simulate a fun but reasonable experience so you can’t create really out of bounds planets, but you can also create very interesting and fun planets.</li>
<li class="has-line-data" data-line-start="11" data-line-end="12">We try our best to simulate but still keep the fun in this game so you can enjoy it while learning.</li>
</ul>
<h1 class="code-line" data-line-start=14 data-line-end=15 ><a id="this_will_be_expanded_upon_later_14"></a>this will be expanded upon later</h1>
<h3 class="code-line" data-line-start=16 data-line-end=17 ><a id="Tech_16"></a>Tech</h3>
<p class="has-line-data" data-line-start="18" data-line-end="19">We are using the game Engine Godot, a free game engine, this project support the open source</p>
<ul>
<li class="has-line-data" data-line-start="20" data-line-end="21"><a href="http://angularjs.org">AngularJS</a> - HTML enhanced for web apps!</li>
<li class="has-line-data" data-line-start="21" data-line-end="22"><a href="http://ace.ajax.org">Ace Editor</a> - awesome web-based text editor</li>
<li class="has-line-data" data-line-start="22" data-line-end="23"><a href="https://github.com/markdown-it/markdown-it">markdown-it</a> - Markdown parser done right. Fast and easy to extend.</li>
<li class="has-line-data" data-line-start="23" data-line-end="24"><a href="http://twitter.github.com/bootstrap/">Twitter Bootstrap</a> - great UI boilerplate for modern web apps</li>
<li class="has-line-data" data-line-start="24" data-line-end="25"><a href="http://nodejs.org">node.js</a> - evented I/O for the backend</li>
<li class="has-line-data" data-line-start="25" data-line-end="26"><a href="http://expressjs.com">Express</a> - fast node.js network app framework <a href="http://twitter.com/tjholowaychuk">@tjholowaychuk</a></li>
<li class="has-line-data" data-line-start="26" data-line-end="27"><a href="http://gulpjs.com">Gulp</a> - the streaming build system</li>
<li class="has-line-data" data-line-start="27" data-line-end="28"><a href="http://breakdance.io">Breakdance</a> - HTML to Markdown converter</li>
<li class="has-line-data" data-line-start="28" data-line-end="30"><a href="http://jquery.com">jQuery</a> - duh</li>
</ul>
<p class="has-line-data" data-line-start="30" data-line-end="32">And of course Dillinger itself is open source with a <a href="https://github.com/joemccann/dillinger">public repository</a><br>
on GitHub.</p>
<h3 class="code-line" data-line-start=33 data-line-end=34 ><a id="Installation_33"></a>Installation</h3>
<p class="has-line-data" data-line-start="35" data-line-end="36">Dillinger requires <a href="https://nodejs.org/">Node.js</a> v4+ to run.</p>
<p class="has-line-data" data-line-start="37" data-line-end="38">Install the dependencies and devDependencies and start the server.</p>
<pre><code class="has-line-data" data-line-start="40" data-line-end="44" class="language-sh">$ <span class="hljs-built_in">cd</span> dillinger
$ npm install <span class="hljs-operator">-d</span>
$ node app
</code></pre>
<p class="has-line-data" data-line-start="45" data-line-end="46">For production environments…</p>
<pre><code class="has-line-data" data-line-start="48" data-line-end="51" class="language-sh">$ npm install --production
$ NODE_ENV=production node app
</code></pre>
<h3 class="code-line" data-line-start=52 data-line-end=53 ><a id="Plugins_52"></a>Plugins</h3>
<p class="has-line-data" data-line-start="54" data-line-end="55">Dillinger is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.</p>
<table class="table table-striped table-bordered">
<thead>
<tr>
<th>Plugin</th>
<th>README</th>
</tr>
</thead>
<tbody>
<tr>
<td>Dropbox</td>
<td><a href="https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md">plugins/dropbox/README.md</a></td>
</tr>
<tr>
<td>GitHub</td>
<td><a href="https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md">plugins/github/README.md</a></td>
</tr>
<tr>
<td>Google Drive</td>
<td><a href="https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md">plugins/googledrive/README.md</a></td>
</tr>
<tr>
<td>OneDrive</td>
<td><a href="https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md">plugins/onedrive/README.md</a></td>
</tr>
<tr>
<td>Medium</td>
<td><a href="https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md">plugins/medium/README.md</a></td>
</tr>
<tr>
<td>Google Analytics</td>
<td><a href="https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md">plugins/googleanalytics/README.md</a></td>
</tr>
</tbody>
</table>
<h3 class="code-line" data-line-start=66 data-line-end=67 ><a id="Development_66"></a>Development</h3>
<p class="has-line-data" data-line-start="68" data-line-end="69">Want to contribute? Great!</p>
<p class="has-line-data" data-line-start="70" data-line-end="72">Dillinger uses Gulp + Webpack for fast developing.<br>
Make a change in your file and instantanously see your updates!</p>
<p class="has-line-data" data-line-start="73" data-line-end="74">Open your favorite Terminal and run these commands.</p>
<p class="has-line-data" data-line-start="75" data-line-end="76">First Tab:</p>
<pre><code class="has-line-data" data-line-start="77" data-line-end="79" class="language-sh">$ node app
</code></pre>
<p class="has-line-data" data-line-start="80" data-line-end="81">Second Tab:</p>
<pre><code class="has-line-data" data-line-start="82" data-line-end="84" class="language-sh">$ gulp watch
</code></pre>
<p class="has-line-data" data-line-start="85" data-line-end="86">(optional) Third:</p>
<pre><code class="has-line-data" data-line-start="87" data-line-end="89" class="language-sh">$ karma <span class="hljs-built_in">test</span>
</code></pre>
<h4 class="code-line" data-line-start=89 data-line-end=90 ><a id="Building_for_source_89"></a>Building for source</h4>
<p class="has-line-data" data-line-start="90" data-line-end="91">For production release:</p>
<pre><code class="has-line-data" data-line-start="92" data-line-end="94" class="language-sh">$ gulp build --prod
</code></pre>
<p class="has-line-data" data-line-start="94" data-line-end="95">Generating pre-built zip archives for distribution:</p>
<pre><code class="has-line-data" data-line-start="96" data-line-end="98" class="language-sh">$ gulp build dist --prod
</code></pre>
<h3 class="code-line" data-line-start=98 data-line-end=99 ><a id="Docker_98"></a>Docker</h3>
<p class="has-line-data" data-line-start="99" data-line-end="100">Dillinger is very easy to install and deploy in a Docker container.</p>
<p class="has-line-data" data-line-start="101" data-line-end="102">By default, the Docker will expose port 8080, so change this within the Dockerfile if necessary. When ready, simply use the Dockerfile to build the image.</p>
<pre><code class="has-line-data" data-line-start="104" data-line-end="107" class="language-sh"><span class="hljs-built_in">cd</span> dillinger
docker build -t joemccann/dillinger:<span class="hljs-variable">${package.json.version}</span> .
</code></pre>
<p class="has-line-data" data-line-start="107" data-line-end="108">This will create the dillinger image and pull in the necessary dependencies. Be sure to swap out <code>${package.json.version}</code> with the actual version of Dillinger.</p>
<p class="has-line-data" data-line-start="109" data-line-end="110">Once done, run the Docker image and map the port to whatever you wish on your host. In this example, we simply map port 8000 of the host to port 8080 of the Docker (or whatever port was exposed in the Dockerfile):</p>
<pre><code class="has-line-data" data-line-start="112" data-line-end="114" class="language-sh">docker run <span class="hljs-operator">-d</span> -p <span class="hljs-number">8000</span>:<span class="hljs-number">8080</span> --restart=<span class="hljs-string">"always"</span> &lt;youruser&gt;/dillinger:<span class="hljs-variable">${package.json.version}</span>
</code></pre>
<p class="has-line-data" data-line-start="115" data-line-end="116">Verify the deployment by navigating to your server address in your preferred browser.</p>
<pre><code class="has-line-data" data-line-start="118" data-line-end="120" class="language-sh"><span class="hljs-number">127.0</span>.<span class="hljs-number">0.1</span>:<span class="hljs-number">8000</span>
</code></pre>
<h4 class="code-line" data-line-start=121 data-line-end=122 ><a id="Kubernetes__Google_Cloud_121"></a>Kubernetes + Google Cloud</h4>
<p class="has-line-data" data-line-start="123" data-line-end="124">See <a href="https://github.com/joemccann/dillinger/blob/master/KUBERNETES.md">KUBERNETES.md</a></p>
<h3 class="code-line" data-line-start=126 data-line-end=127 ><a id="Todos_126"></a>Todos</h3>
<ul>
<li class="has-line-data" data-line-start="128" data-line-end="129">Write MORE Tests</li>
<li class="has-line-data" data-line-start="129" data-line-end="131">Add Night Mode</li>
</ul>
<h2 class="code-line" data-line-start=131 data-line-end=133 ><a id="License_131"></a>License</h2>
<p class="has-line-data" data-line-start="133" data-line-end="135">This software is licensed under the “Anyone But Richard M Stallman”<br>
(ABRMS) license, described below. No other licenses may apply.</p>
<hr>
<h2 class="code-line" data-line-start=138 data-line-end=140 ><a id="The_Anyone_But_Richard_M_Stallman_license_138"></a>The “Anyone But Richard M Stallman” license</h2>
<p class="has-line-data" data-line-start="141" data-line-end="143">Do anything you want with this program, with the exceptions listed<br>
below under “EXCEPTIONS”.</p>
<p class="has-line-data" data-line-start="144" data-line-end="145">THIS SOFTWARE IS PROVIDED “AS IS” WITH NO WARRANTY OF ANY KIND.</p>
<p class="has-line-data" data-line-start="146" data-line-end="148">In the unlikely event that you happen to make a million bucks off of<br>
this, then good for you; consider donating to charity or buying less fortunate people food.</p>
<h2 class="code-line" data-line-start=150 data-line-end=152 ><a id="EXCEPTIONS_150"></a>EXCEPTIONS</h2>
<p class="has-line-data" data-line-start="153" data-line-end="155">Richard M Stallman (the guy behind GNU, etc.) may not make use of or<br>
redistribute this program or any of its derivatives.</p>
<p class="has-line-data" data-line-start="157" data-line-end="158"><strong>Free Software, Hell Yeah!</strong></p>
