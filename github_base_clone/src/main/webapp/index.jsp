<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/reset-css.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/index.css">
<link rel="icon" type="image" href="img/logo_light.svg" sizes="32x32">
<title>Welcome to Codehub</title>
</head>
<body class="index-page">

  <%@ include file="header.jsp" %>
  
	<section class="home-hero-container">
	    <div class="hero-section">
	      <div class="hero-content">
	        <h1>The future of building happens together</h1>
	        <p>Tools and trends evolve, but collaboration endures. With GitHub, developers, agents, and code come together on one platform.</p>
	        
	        <div class="hero-buttons">
	            <form action="signup.jsp" class="signup-form">
	                <input type="email" placeholder="Enter your email" required>
	                <button type="submit"><span>Sign up for GitHub</span></button>
	            </form>
	            <a href="#" class="copilot-btn">Try GitHub Copilot</a>
	        </div>
	        
	        <img src="img/signup.webp" alt="Mascots" class="mascots-img">
	      </div>
	    </div>
	    <div class="hero-section-box">
		    <div class="hero-inner-box">
		    </div>
		</div>
	  </section>
	  <div class="feature-toggle-container">
		    <div class="toggle-nav">
		        <button class="toggle-btn active" onclick="changeContent('code', this)">Code</button>
		        <button class="toggle-btn" onclick="changeContent('plan', this)">Plan</button>
		        <button class="toggle-btn" onclick="changeContent('collaborate', this)">Collaborate</button>
		        <button class="toggle-btn" onclick="changeContent('automate', this)">Automate</button>
		        <button class="toggle-btn" onclick="changeContent('secure', this)">Secure</button>
		    </div>
		    <p class="toggle-description" id="toggle-desc">Leverage tooling to detect, review, and fix vulnerabilities before they reach production.</p>
		</div>
		
		<div class="marquee-container">
		    <div class="marquee-track" id="marquee-track">
		        <img src="img/philips.svg" alt="Philips">
		        <img src="img/soci.svg" alt="Societe Generale">
		        <img src="img/spotify.svg" alt="Spotify">
		        <img src="img/voda.svg" alt="Vodafone">
		        <img src="img/airlines.svg" alt="American Airlines">
		        <img src="img/duolingo.svg" alt="Duolingo">
		        <img src="img/infosys.svg" alt="infosys">
		        <img src="img/ford.svg" alt="ford">
		        <img src="img/ey.svg" alt="ey">
		        <img src="img/libre.svg" alt="libre">
		        <img src="img/merce.svg" alt="merce">
		        
		        <img src="img/philips.svg" alt="Philips">
		        <img src="img/soci.svg" alt="Societe Generale">
		        <img src="img/spotify.svg" alt="Spotify">
		        <img src="img/voda.svg" alt="Vodafone">
		        <img src="img/airlines.svg" alt="American Airlines">
		        <img src="img/duolingo.svg" alt="Duolingo">
		         <img src="img/infosys.svg" alt="infosys">
		        <img src="img/ford.svg" alt="ford">
		        <img src="img/ey.svg" alt="ey">
		        <img src="img/libre.svg" alt="libre">
		        <img src="img/merce.svg" alt="merce">
		    </div>
		    
		    <button class="marquee-control" onclick="toggleMarquee()" id="marquee-btn">
		        <span id="pause-icon">||</span>
		        <span id="play-icon" style="display: none;">&#9654;</span>
		    </button>
		</div>
		
		<div class="workflow-box-container">
		    <div class="mascot-img">
		        <img src="img/copilot.png" alt="copilot">
		    </div>
		    <div class="workflow-header">
		        <h2>Accelerate your entire workflow</h2>
		        <p><span>From your first line of code to final deployment, GitHub provides AI and automation tools to help you build and ship better software faster.</span></p>
		    </div>
		    <div class="workflow-video-box">
		        
		        <div class="workflow-video-border-box">
					    <video id="workflow-vid" loop> 
					        <source src="vid/github-copilot-agent-mode.mp4" type="video/mp4">
					    </video>
		        </div>
		        
		        <button class="marquee-control video-play-btn" onclick="toggleWorkflowVideo()" id="workflow-btn">
		            <span id="workflow-play-icon">&#9654;</span>
		            <span id="workflow-pause-icon" style="display: none;">||</span>
		        </button>
		        
		 	</div>
		</div>
		<section class="gartner">
		    <div class="gartner-content">
		        
		        <div class="gartner-box-left">
		            <p><span class="highlight-text">Your AI partner everywhere.</span> Copilot is ready to work with you at each step of the software development lifecycle.</p>
		            <a href="#">Explore GitHub Copilot <span class="arrow">→</span></a>
		        </div>
		        
		        <div class="gartner-box-right-1">
		            <img src="img/duolingo-1.svg" alt="Duolingo logo" class="gartner-box-logo">
		            <p>Duolingo boosts developer speed by 25% with GitHub Copilot</p>
		            <a href="#">Read customer story <span class="arrow">→</span></a>
		        </div>
		        
		        <div class="gartner-box-right-2">
		            <img src="img/gartner1.svg" alt="Gartner logo" class="gartner-box-logo">
		            <p>2025 Gartner® Magic Quadrant™ for AI Code Assistants</p>
		            <a href="#">Read industry report <span class="arrow">→</span></a>
		        </div>
		
		    </div>
		</section>
		<section class="automate-section">
		    <div class="automate-container">
		        
		        <div class="automate-left">
		            
		            <div class="accordion-item active" data-image="img/accordion-1.webp">
		                <div class="accordion-top">
		                    <h3>Automate your path to production</h3>
		                    <span class="plus-icon">+</span>
		                </div>
		                <div class="accordion-content">
		                    <p>Ship faster with secure, reliable CI/CD.</p>
		                    <a href="#">Explore GitHub Actions <span class="arrow">→</span></a>
		                </div>
		            </div>
		            
		            <div class="accordion-item" data-image="img/accordion-2.webp"> <div class="accordion-top">
		                    <h3>Code instantly from anywhere</h3>
		                    <span class="plus-icon">+</span>
		                </div>
		                <div class="accordion-content">
		                    <p>Launch a full, cloud-based development environment in seconds.</p>
		                    <a href="#">Explore GitHub Codespaces <span class="arrow">→</span></a>
		                </div>
		            </div>
		            
		            <div class="accordion-item" data-image="img/accordion-3.webp"> <div class="accordion-top">
		                    <h3>Keep momentum on the go</h3>
		                    <span class="plus-icon">+</span>
		                </div>
		                <div class="accordion-content">
		                    <p>Manage projects and assign tasks to Copilot, all from your mobile device.</p>
		                    <a href="#">Explore GitHub Mobile <span class="arrow">→</span></a>
		                </div>
		            </div>
		            
		            <div class="accordion-item" data-image="img/accordion-4.webp"> <div class="accordion-top">
		                    <h3>Shape your toolchain</h3>
		                    <span class="plus-icon">+</span>
		                </div>
		                <div class="accordion-content">
		                    <p>IExtend your stack with apps, actions, and AI models.</p>
		                    <a href="#">Explore GitHub Marketplace <span class="arrow">→</span></a>
		                </div>
		            </div>
		
		        </div>
		
		        <div class="automate-right">
		            <img src="img/accordion-1.webp" alt="Workflow Feature" class="full-img">
		        </div>
		        
		    </div>
		</section>
		<section class="security-section">
    
		    <div class="security-header">
		        <img src="img/shield.png" alt="Security Shield" class="shield-icon">
		        
		        <h2>Built-in application security<br>where found means fixed</h2>
		        <p>Use AI to find and fix vulnerabilities so your team can ship<br>more secure software faster.</p>
		    </div>
		
		    <div class="security-box-wrapper">
		        <div class="security-box">
		            
		            <div class="security-box-left">
		                <p><span>Apply fixes in seconds.</span> Spend less time debugging and more time building features with Copilot Autofix.</p>
		                <a href="#">Explore GitHub Advanced Security <span class="arrow">→</span></a>
		            </div>
		            
		            <div class="security-box-right">
		                <div class="image-border-wrapper">
		                    <div class="image-border-inner">
		                        <img src="img/secure.webp" alt="Copilot Autofix Code" class="security-img">
		                    </div>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		</section>
		<section class="security-features">
			<div class="security-grid">
				<div class="security-feature-card">
					<div class="card-header">
						<p><span>
							Security debt, solved. 
						</span> Leverage security campaigns and Copilot Autofix to reduce application vulnerabilities.</p>
					</div>
					 <a href="#">Learn about GitHub Code Security <span class="arrow">→</span></a>
					 <div class="security-card-image">
					 	<img src="img/pillar1.webp" class="security-image">
					 </div>
				</div>
					<div class="security-feature-card">
					<div class="card-header">
						<p><span>
							Dependencies you can depend on.
						</span>Update vulnerable dependencies with supported fixes for breaking changes..</p>
					</div>
					 <a href="#">Learn about Dependabot <span class="arrow">→</span></a>
					 <div class="security-card-image">
					 	<img src="img/pillar2.webp" class="security-image">
					 </div>
				</div>
					<div class="security-feature-card">
					<div class="card-header">
						<p><span>
							Your secrets, your business. 
						</span>  Detect, prevent, and remediate leaked secrets across your organization.</p>
					</div>
					 <a href="#">Learn about GitHub Secret Protection <span class="arrow">→</span></a>
					 <div class="security-card-image">
					 	<img src="img/pillar3.webp" class="security-image">
					 </div>
				</div>
			</div>
			<div class="security-stats">
				<div class="security-grid-stats">
					<div class="security-stat-card">
						<p> 70% MTTR reduction</p>
						<span>with Copilot Autofix1</span>
					</div>
					<div class="security-stat-card">
						<p> 8.5M secret leaks stopped </p>
						<span>in the past 12 months with push protection1</span>
					</div>
				</div>
			</div>
		</section>
		<div class="together-box-container">
		    <div class="mascot-img">
		        <img src="img/mascot1.png" alt="mascot1">
		    </div>
		    <div class="together-header">
		        <h2>Work together, achieve more</h2>
		        <p><span>From planning and discussion to code review, GitHub keeps your team’s conversation and context next to your code.</span></p>
		    </div>
		    <div class="together-image-box">
		        
		        <div class="together-image-border-box">
					  <img src="img/together.webp">
		        </div>
		        
		 	</div>
		</div>
		<section class="together-brand">
		    <div class="together-grid">
		        <div class="together-left">
		            <p><span>Plan with clarity.</span> Organize everything from high-level roadmaps to everyday tasks.</p>
		            <a href="#">Explore GitHub Projects <span class="arrow">→</span></a>
		        </div>
		        
		        <div class="together-right">
		            <div class="quote-icon">“</div>
		            <blockquote>
		                It helps us onboard new software engineers and get them productive right away. We have all our source code, issues, and pull requests in one place... GitHub is a complete platform that frees us from menial tasks and enables us to do our best work.
		            </blockquote>
		            <div class="author-info">
		                <p class="author-name">Fabian Faulhaber</p>
		                <p class="author-title">Application manager at Mercedes-Benz</p>
		            </div>
		        </div>
		    </div>
		</section>
		<section class="automate-section">
		    <div class="automate-container">
		        
		        <div class="automate-left">
		            
		            <div class="accordion-item active" data-image="img/accordion-tasks-1.webp">
		                <div class="accordion-top">
		                    <h3>Keep track of your tasks</h3>
		                    <span class="plus-icon">+</span>
		                </div>
		                <div class="accordion-content" >
		                    <p>Create issues and manage projects with tools that adapt to your code.</p>
		                    <a href="#">Explore CodeHub Issues <span class="arrow">→</span></a>
		                </div>
		            </div>
		            
		            <div class="accordion-item" data-image="img/accordion-tasks-2.webp">
		                <div class="accordion-top">
		                    <h3>Share your ideas and ask questions</h3>
		                    <span class="plus-icon">+</span>
		                </div>
		                <div class="accordion-content">
		                    <p>Create space for open-ended conversations alongside your project.</p>
		                    <a href="#">Explore Codehub Discussions <span class="arrow">→</span></a>
		                </div>
		            </div>
					  <div class="accordion-item" data-image="img/accordion-tasks-3.webp">
		                <div class="accordion-top">
		                    <h3>Review code changes together.</h3>
		                    <span class="plus-icon">+</span>
		                </div>
		                <div class="accordion-content">
		                    <p>Assign initial reviews to Copilot for greater speed and quality.</p>
		                    <a href="#">Explore Code review <span class="arrow">→</span></a>
		                </div>
		            </div>
		              <div class="accordion-item" data-image="img/accordion-tasks-4.webp">
		                <div class="accordion-top">
		                    <h3>Fund open source projects.</h3>
		                    <span class="plus-icon">+</span>
		                </div>
		                <div class="accordion-content">
		                    <p>Become an open source partner and support the tools and libraries that power your work.</p>
		                    <a href="#">Explore Codehub Sponsors <span class="arrow">→</span></a>
		                </div>
		            </div>
		            </div>
		
		        <div class="automate-right">
		            <img src="img/accordion-tasks-1.webp" alt="Task Tracking" class="full-img">
		        </div>
		        
		    </div>
		</section>
		<section class="customer-stories-section">
		    <div class="cs-header">
		        <img src="img/mascot3.png" alt="Duck Mascot" >
		        <h2>From startups to enterprises,<br>GitHub scales with teams of<br>any size in any industry.</h2>
		    </div>
		
		    <div class="cs-toggle-container">
		        <div class="toggle-nav">
		            <button class="toggle-btn active" onclick="changeCustomerTab('industry', this)">By industry</button>
		            <button class="toggle-btn" onclick="changeCustomerTab('size', this)">By size</button>
		            <button class="toggle-btn" onclick="changeCustomerTab('usecase', this)">By use case</button>
		        </div>
		    </div>
		</section>
		
		<section class="section-grid-stories">
		    <div class="cs-grid" id="cs-grid-container">
		    </div>
		</section>

		<section class="bottom-cta-section">
		    <div class="bottom-links">
		        <a href="#">Explore customer stories <span class="arrow">›</span></a>
		        <a href="#">View all solutions <span class="arrow">›</span></a>
		    </div>
		    <div class="bottom-mascots">
		        <img src="img/mascots-group.png" alt="GitHub Mascots">
		    </div>
		    <div class="bottom-cta-content">
		        <h2>Millions of developers and<br>businesses call GitHub home</h2>
		        <p>Whether you’re scaling your development process or just learning how to code,<br>GitHub is where you belong. Join the world's most widely adopted developer platform<br>to build the technologies that shape what's next.</p>
		        <div class="hero-buttons bottom-cta-buttons">
		            <form action="signup.jsp" class="signup-form">
		                <input type="email" placeholder="Enter your email" required>
		                <button type="submit"><span>Sign up for GitHub</span></button>
		            </form>
		            <a href="#" class="copilot-btn">Try GitHub Copilot</a>
		        </div>
		    </div>
		</section>

  <%@ include file="footer.jsp" %>
  
  <script src="js/index.js"></script>
</body>
</html>