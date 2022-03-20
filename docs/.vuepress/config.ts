import { defineUserConfig } from 'vuepress'
import type { DefaultThemeOptions } from 'vuepress'

export default defineUserConfig<DefaultThemeOptions>({
    lang: 'en-US',
    title: 'Project documentation',
    description: 'Just playing around',
    theme: '@vuepress/theme-default',
    themeConfig: {
        logo: 'https://seeklogo.com/images/W/world-bank-logo-50FE63E4E3-seeklogo.com.png',
    },
    plugins: [
        [
            "@vuepress/search",
            {
                locales: {
                    '/': {
                        placeholder: 'Search in documentation',
                    },
                },
            },
        ]
    ]
})
