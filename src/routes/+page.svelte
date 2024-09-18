<script lang="ts">
	import SocialBadge from '../components/SocialBadge.svelte';
	import DevRainbowBadge from '../components/SocialBadges/DevRainbowBadge.svelte';
	import GitLabBadge from '../components/SocialBadges/GitLabBadge.svelte';
	import GitHubBadge from '../components/SocialBadges/GitHubBadge.svelte';

	const socialBadges = [
		{
			svg: DevRainbowBadge,
			link: 'https://dev.to/cr0wst',
		},
		{
			svg: GitLabBadge,
			link: 'https://gitlab.com/cr0wst',
		},
		{
			svg: GitHubBadge,
			link: 'https://github.com/cr0wst',
		}
	]
</script>

<div class="w-full bg-white p-8">
	<div class="flex flex-col justify-between items-center space-y-4">
		<!-- Profile Image -->
		<div
			class="relative w-16 aspect-square bg-emerald-600 rounded-full rounded-bl-none flex items-center justify-center">
			<img
				alt="Me"
				src="/me.jpg"
				class="absolute w-16 aspect-square rounded-full rounded-bl-none border-4 border-slate-600 -top-2 -right-2"
			/>
		</div>

		<!-- Intro Stuff -->
		<div class="w-full grid-cols-1 space-y-4 font-normal">
			<h1 class="text-2xl font-bold">Hi, I’m <span class="text-emerald-600">Steve Crow</span>!</h1>
			<p class="text-xl">I’m a <span class="font-medium">Senior Software Engineer</span> at <a
				href="https://ninjacat.io">NinjaCat</a>.</p>
			<p>I primarily work with languages like <a href="https://www.typescriptlang.org/">TypeScript</a>, <a
				href="https://kotlinlang.org/ ">Kotlin</a>, and <a href="https://www.php.net/">PHP</a>. I’ve also worked with
				frontend frameworks
				like <a href="https://svelte.dev/">Svelte</a> and <a href="https://vuejs.org/">Vue</a>.</p>
			<p>When not writing code, I enjoy flying airplanes, both virtually on <a href="https://vatsim.net/">VATSIM</a> and
				in the real world out of <a href="https://osuairport.org/">the Ohio
					State University Airport</a>.</p>
		</div>

		<!-- Social Links -->
		<div class="w-full justify-center flex space-x-8">
			{#each socialBadges as badge}
				<SocialBadge link="{badge.link}" svg="{badge.svg}" />
			{/each}
		</div>
	</div>
</div>

<style lang="postcss">
    a {
        @apply text-emerald-600 hover:text-emerald-500 font-medium;
    }
</style>