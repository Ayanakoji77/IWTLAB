<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/reset-css.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/features.css">
<link rel="icon" type="image" href="img/logo_light.svg" sizes="32x32">
<title>Codehub Features - Codehub</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<div class="nav-header">
		<div class="navbar">
			<div class="features-card">
				<a href="features.jsp">Features</a>
			</div>
			<div class="links">
				<ul>
					<li><a href="#"><span>CodeHub Copilot</span></a>
					<li><a href="#"> <span>Security</span></a></li>
					<li><a href="#"> <span>Actions</span></a></li>
					<li><a href="#"> <span>Codespaces</span></a></li>
					<li><a href="#"> <span>Issues</span></a></li>
					<li><a href="#"> <span>Code Review</span></a></li>
					<li><a href="#"> <span>Discussions</span></a></li>
					<li><a href="#"> <span>Code Search</span></a></li>
				</ul>
			</div>
		</div>
		<div class="title">
			<div class="title-content">
				<h1>The tools you need to </h1><h1> build what you want.</h1>
			</div>
		</div>
		<section class = "section">
			<div class="brand-content">
				<div class="brand-card">
					<div class="img-card"> <img src="img/copilot.svg" alt="#"></div>
			   		<div> <h2><a href="#">Experience AI with Copilot Chat</a></h2></div>
			   		<div><span>Learn More</span></div>
				</div>
				<div class="brand-card">
					<div class="img-card"> <img src="img/sparkle-fill.svg" alt="#"></div>
			   		<div> <h2><a href="#">The latest Codehub previews </a></h2></div>
			   		<div><span>Learn More</span></div>
				</div>
			</div>
		</section>
		<section class="section sticky-nav-section">
		    <div class="nav">
		        <a href="#collaborative-coding"><span>Collaborative coding</span></a>
		        <a href="#automation"><span>Automation & CI/CD</span></a>
		        <a href="#application-security"><span>Application Security</span></a>
		        <a href="#client-apps"><span>Client Apps</span></a>
		        <a href="#project-management"><span>Project Management</span></a>
		    </div>
		</section>
		<section id = "collaborative-coding" class="collaborative">
			<div class="card-content">
				<div class="card-header">
					<h2>
						Collaborative Coding
					</h2>
				</div>
				<div class="card-img">
					<img  src="img/section-collaboration.webp" alt="collaboration">
				</div>
				<div class="card-footer">
					 <div class="card-footer-left">
					 	<p>
					 		Innovate faster with seamless collaboration.
					 	</p>
					 </div>
    				<div class="card-footer-right">
    					<ul>
    						<li><span>See the changes you care about.  </span> </li>
    						<li><span>Build community around your code.</span></li>
    					</ul>
    				</div>
				</div>
			</div>
		</section>
		<section class = "link-box">
			<div class="link-grid">
				<div class="link-card">
					<h3>
						<a href="#">Codehub Codespaces</a>
					</h3>
					<p>
						Spin up fully configured dev environments in the cloud with the full power of your favorite editor.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Codehub Copilot</a>
					</h3>
					<p>
							Get suggestions for whole lines of code or entire functions right inside your editor.					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Pull Requests</a>
					</h3>
					<p>
							Receive notifications of contributor changes to a repository, with specified access limits, and seamlessly merge accepted updates.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Discussions</a>
					</h3>
					<p>
						Dedicated space for your community to come together, ask and answer questions, and have open-ended conversations.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Code Search & Code view</a>
					</h3>
					<p>
							Rapidly search, navigate, and understand code right from GitHub.com with our powerful new tools.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Code Review</a>
					</h3>
					<p>
							Review new code, visualize changes, and merge confidently with automated status checks.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Draft Pull Requests</a>
					</h3>
					<p>
							Collaborate and discuss changes without a formal review or the risk of unwanted merges.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Protected Branches</a>
					</h3>
					<p>
							Enforce branch merge restrictions by requiring reviews or limiting access to specific contributors.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
			</div>
		</section>
		<section id = "automation" class="collaborative">
			<div class="card-content">
				<div class="card-header">
					<h2>
						Automation & CI/CD
					</h2>
				</div>
				<div class="card-img">
					<img  src="img/section-automation.webp" alt="automation">
				</div>
				<div class="card-footer">
					 <div class="card-footer-left">
					 	<p>
					 		Automate everything: CI/CD, testing, planning, project management, issue labeling, approvals, onboarding, and more
					 	</p>
					 </div>
    				<div class="card-footer-right">
    					<ul>
    						<li><span>Standardize and scale best practices, security, and compliance across your organization. </span> </li>
    						<li><span>Get started quickly with thousands of actions from partners and the community.</span></li>
    					</ul>
    				</div>
				</div>
			</div>
		</section>
		<section class = "link-box">
			<div class="link-grid">
				<div class="link-card">
					<h3>
						<a href="#">Codehub Actions</a>
					</h3>
					<p>
						Automate your software workflows by writing tasks and combining them to build, test, and deploy faster from GitHub.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Codehub Packages</a>
					</h3>
					<p>
							Host your own software packages or use them as dependencies in other projects, with both private and public hosting available.
												</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">APIs</a>
					</h3>
					<p>
							Create calls to get all the data and events you need within GitHub, and automatically kick off and advance your software workflows.

					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Codehub Marketplace</a>
					</h3>
					<p>
						Leverage thousands of actions and applications from our community to help build, improve, and accelerate your workflows.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Webhooks</a>
					</h3>
					<p>
							Dozens of events and a webhooks API help you integrate with and automate work for your repository, organization, or application.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Codehub Hosted Runners</a>
					</h3>
					<p>
							Move automation to the cloud with on-demand Linux, macOS, Windows, ARM, and GPU environments for your workflow runs, all hosted by GitHub.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Self Hosted Runners</a>
					</h3>
					<p>
							Gain more environments and fuller control with labels, groups, and policies to manage runs on your own machines, plus an open source runner application.
							
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Workflow Visualizations</a>
					</h3>
					<p>
							Map workflows, track their progression in real time, understand complex workflows, and communicate status with the rest of the team.

					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Workflow Templates</a>
					</h3>
					<p>
							Standardize and scale best practices and processes with preconfigured workflow templates shared across your organization.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
			</div>
		</section>
		<section id = "application-security" class="collaborative">
			<div class="card-content">
				<div class="card-header">
					<h2>
						Application Security
					</h2>
				</div>
				<div class="card-img">
					<img  src="img/section-security-illo.webp" alt="automation">
				</div>
				<div class="card-footer">
					 <div class="card-footer-left">
					 	<p>
					 		Application security where found means fixed. Powered by GitHub Copilot Autofix.
					 	</p>
					 </div>
    				<div class="card-footer-right">
    					<ul>
    						<li><span>Prevent, find, and fix application vulnerabilities and leaked secrets. </span> </li>
    						<li><span>Target historical alerts to reduce security debt at scale..</span></li>
    						<li><span>Built into the GitHub platform that developers know and love. </span></li>
    					</ul>
    				</div>
				</div>
			</div>
		</section>
		<section class = "link-box">
			<div class="link-grid">
				<div class="link-card">
					<h3>
						<a href="#">Code Scanning</a>
					</h3>
					<p>
						Find vulnerabilities in your code with CodeQL, GitHub’s industry-leading semantic code analysis. Prevent new vulnerabilities from being introduced by scanning every pull request.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Codehub Copilot Autofix</a>
					</h3>
					<p>
							Powered by GitHub Copilot, generate automatic fixes for 90% of alert types in JavaScript, TypeScript, Java, and Python. Quickly remediate with contextual vulnerability intelligence and advice.
												</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Security Campaigns</a>
					</h3>
					<p>
							Solve your backlog of application security debt with security campaigns that target and generate autofixes for up to 1,000 alerts at a time, rapidly reducing the risk of vulnerabilities and zero-day attacks.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Secret Scanning</a>
					</h3>
					<p>
						Detect exposed secrets in your public and private repositories, and revoke them to secure access to your services.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Codehub Copilot Secret Scanning </a>
					</h3>
					<p>
							Additional AI capabilities to detect elusive secrets like passwords.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Dependency Graph</a>
					</h3>
					<p>
							View the packages your project relies on, the repositories that depend on them, and any vulnerabilities detected in their dependencies.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Dependabot alerts</a>
					</h3>
					<p>
							Receive alerts when new vulnerabilities affect your repositories, with GitHub detecting and notifying you of vulnerable dependencies in both public and private repositories.
							
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Dependabot security and version updates</a>
					</h3>
					<p>
							Keep your code secure by automatically opening pull requests that update vulnerable or out-of-date dependencies.

					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Dependency Review</a>
					</h3>
					<p>
							Assess the security impact of new dependencies in pull requests before merging.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">CodeHub security advisories</a>
					</h3>
					<p>
						Privately report, discuss, fix, and publish information about security vulnerabilities found in open source repositories.							
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Private vulnerability reporting</a>
					</h3>
					<p>
							Enable your public repository to privately receive vulnerability reports from the community and collaborate on solutions.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">CodeHub Advisory Database</a>
					</h3>
					<p>
							Browse or search GitHub's database of known vulnerabilities, featuring curated CVEs and security advisories linked to the GitHub dependency graph.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
			</div>
		</section>
		<section id = "client-apps" class="collaborative">
			<div class="card-content">
				<div class="card-header">
					<h2>
						Client apps
					</h2>
				</div>
				<div class="card-img">
					<img  src="img/section-apps.webp" alt="automation">
				</div>
				<div class="card-footer">
					 <div class="card-footer-left">
					 	<p>
					 		Access GitHub anywhere: On Desktop, Mobile, and Command Line.
					 	</p>
					 </div>
    				<div class="card-footer-right">
    					<ul>
    						<li><span>Accessible anywhere. Use GitHub on macOS, Windows, mobile, or tablet with native apps.  </span> </li>
    						<li><span>Efficient management. Handle pull requests, issues, and tasks swiftly with GitHub CLI or mobile. </span></li>
    						<li><span>Streamlined development. Visualize and commit changes easily with GitHub Desktop. </span></li>
    					</ul>
    				</div>
				</div>
			</div>
		</section>
		<section class = "link-box">
			<div class="link-grid">
				<div class="link-card">
					<h3>
						<a href="#">CodeHub Mobile</a>
					</h3>
					<p>
								Take your projects, ideas, and code to go with fully native mobile and tablet experiences.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">CodeHub CLI</a>
					</h3>
					<p>
								Manage issues and pull requests from the terminal, where you're already working with Git and your code.								
													</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">CodeHub Desktop</a>
					</h3>
					<p>
							Simplify your development workflow with a GUI to visualize, commit, and push changes—no command line needed.					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
			</div>
		</section>
		<section id = "project-management" class="collaborative">
			<div class="card-content">
				<div class="card-header">
					<h2>
						Project management
					</h2>
				</div>
				<div class="card-img">
					<img  src="img/section-project-management.webp" alt="automation">
				</div>
				<div class="card-footer">
					 <div class="card-footer-left">
					 	<p>
					 		Keep feature requests, bugs, and more organized.
					 	</p>
					 </div>
    				<div class="card-footer-right">
    					<ul>
    						<li><span>Coordinate initiatives big and small with project tables, boards, and task lists.   </span> </li>
    						<li><span>Engineered for software teams.  </span></li>
    						<li><span>Track what you deliver down to the commit.  </span></li>
    					</ul>
    				</div>
				</div>
			</div>
		</section>
		<section class = "link-box">
			<div class="link-grid">
				<div class="link-card">
					<h3>
						<a href="#">CodeHub Projects</a>
					</h3>
					<p>
								Create a customized view of your issues and pull requests to plan and track your work.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">CodeHub Issues</a>
					</h3>
					<p>
								Track bugs, enhancements, and other requests, prioritize work, and communicate with stakeholders as changes are proposed and merged.							
													</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Milestones</a>
					</h3>
					<p>
						Track progress on groups of issues or pull requests in a repository, and map groups to overall project goals.
				</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Charts and insights</a>
					</h3>
					<p>
								Leverage insights to visualize your projects by creating and sharing charts built from your project's data.	
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Org dependency insights</a>
					</h3>
					<p>
								View vulnerabilities, licenses, and other important information for the open source projects your organization depends on.						
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Repository insights</a>
					</h3>
					<p>
						Use data about activity, trends, and contributions within your repositories, to make data-driven improvements to your development cycle.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Wikis</a>
					</h3>
					<p>
						Host project documentation in a wiki within your repository, allowing contributors to easily edit it on the web or locally.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
			</div>
		</section>
		<section class="collaborative">
			<div class="card-content">
				<div class="card-header">
					<h2>
						Governance & administration
					</h2>
				</div>
				<div class="card-img">
					<img  src="img/section-team-administration.webp" alt="automation">
				</div>
				<div class="card-footer">
					 <div class="card-footer-left">
					 	<p>
					 		Simplify access and permissions management across your projects and teams.
					 	</p>
					 </div>
    				<div class="card-footer-right">
    					<ul>
    						<li><span>Update permissions, add new users as you grow, and assign everyone the exact permissions they need.    </span> </li>
    						<li><span>Sync with Okta and Entra ID.  </span></li>
    					</ul>
    				</div>
				</div>
			</div>
		</section>
		<section class = "link-box">
			<div class="link-grid">
				<div class="link-card">
					<h3>
						<a href="#">Organizations</a>
					</h3>
					<p>
								Create groups of user accounts that own repositories and manage access on a team-by-team or individual user basis.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Teams</a>
					</h3>
					<p>
								Organize your members to mirror your company's structure, with cascading access to permissions and mentions.							
													</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Team Sync</a>
					</h3>
					<p>
						Enable team synchronization between your identity provider and your organization on GitHub, including Entra ID and Okta.
				</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Custom Roles</a>
					</h3>
					<p>
								Define users' access level to your code, data, and settings based on their role in your organization.	
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Custom Repository Roles</a>
					</h3>
					<p>
								Ensure members have only the permissions they need by creating custom roles with fine-grained permission settings.						
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Domain Verfication</a>
					</h3>
					<p>
						Verify your organization's identity on GitHub and display that verification through a profile badge.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Compilance Reports</a>
					</h3>
					<p>
						Take care of your security assessment and certification needs by accessing GitHub’s cloud compliance reports, such as our SOC reports and Cloud Security Alliance CAIQ self-assessments (CSA CAIQ).
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Audit Log</a>
					</h3>
					<p>
								Quickly review the actions performed by members of your organization. Monitor access, permission changes, user changes, and other events.

					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Repository Rules</a>
					</h3>
					<p>
								Enhance your organization's security with scalable source code protections, and use rule insights to easily review how and why code changes occurred in your repositories.
																				</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Enterprise Accounts</a>
					</h3>
					<p>
						Enable collaboration between your organization and GitHub environments with a single point of visibility and management via an enterprise account.

				</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Github Connect</a>
					</h3>
					<p>
								Share features and workflows between your GitHub Enterprise Server instance and GitHub Enterprise Cloud.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">SAML</a>
					</h3>
					<p>
								Securely control access to organization resources like repositories, issues, and pull requests with SAML, while allowing users to authenticate with their GitHub usernames.					
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">LDAP</a>
					</h3>
					<p>
						Centralize repository management. LDAP is one of the most common protocols used to integrate third-party software with large company user directories.

					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Enterprize Managed Users</a>
					</h3>
					<p>
						Manage the lifecycle and authentication of users on GitHub Enterprise Cloud from your identity provider (IdP).
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Bring your own identity provider for Enterprize Managed Users</a>
					</h3>
					<p>
						Use the SSO and SCIM providers of your choice for Enterprise Managed Users, separate from one another, for a more flexible approach to user lifecycle management.
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
			</div>
		</section>
		<section class="collaborative">
			<div class="card-content">
				<div class="card-header">
					<h2>
						Community
					</h2>
				</div>
				<div class="card-img">
					<img  src="img/section-community.webp" alt="automation">
				</div>
				<div class="card-footer">
					 <div class="card-footer-left">
					 	<p>
					 		Simplify access and permissions management across your projects and teams.
					 	</p>
					 </div>
    				<div class="card-footer-right">
    					<ul>
    						<li><span>Update permissions, add new users as you grow, and assign everyone the exact permissions they need.    </span> </li>
    						<li><span>Sync with Okta and Entra ID.  </span></li>
    					</ul>
    				</div>
				</div>
			</div>
		</section>
		<section class = "link-box">
			<div class="link-grid">
				<div class="link-card">
					<h3>
						<a href="#">Codehub Sponsors</a>
					</h3>
					<p>
								Financially support the open source projects your code depends on. Sponsor a contributor, maintainer, or project with one time or recurring contributions.

					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Codehub Skills</a>
					</h3>
					<p>
								Learn new skills by completing tasks and projects directly within GitHub, guided by our friendly bot.							
													</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Electronc</a>
					</h3>
					<p>
						Write cross-platform desktop applications using JavaScript, HTML, and CSS with the Electron framework, based on Node.js and Chromium.
				</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
				<div class="link-card">
					<h3>
						<a href="#">Education</a>
					</h3>
					<p>
								GitHub Education is a commitment to bringing tech and open source collaboration to students and educators across the globe.	
					</p>
					<div>
						<span>Learn More</span>
					</div>
				</div>
			</div>
		</section>
		<section class="pricing-sec">
			<div class="pricing-card">
				<div class="pricing-content">
					<h3>
							Ready to get started?
					</h3>
					<p>
						Explore all the plans to find the solution that fits your needs.
					</p>
					<div class="pricing-links">
						<a href="pricing.jsp" class="pricing">
							View pricing plans
						</a>
						<a href="#" class="contact">
							Contact Sales
						</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	
	<%@ include file="footer.jsp" %>
</body>
</html>