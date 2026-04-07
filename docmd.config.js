import { defineConfig } from '@docmd/core';

export default defineConfig({
  title: 'Product-OS',
  description: '你丢需求，AI 帮你整理成 PRD。',
  logo: {
    light: 'assets/logo.png',
    dark: 'assets/logo.png',
    href: '/',
    alt: 'Product-OS',
    height: '28px',
  },
  navigation: [
    { title: '首页', path: '/', icon: 'home' },
    {
      title: '快速开始',
      icon: 'rocket',
      collapsible: true,
      children: [
        { title: '5 分钟上手', path: '/getting-started/quick-start' },
        { title: '安装与配置', path: '/getting-started/install' },
      ],
    },
    {
      title: '主链路',
      icon: 'workflow',
      collapsible: true,
      children: [
        { title: '主链路流程', path: '/workflow/main-flow' },
        { title: '状态机', path: '/workflow/state-machine' },
        { title: '失败恢复', path: '/workflow/failure-recovery' },
      ],
    },
    { title: '完整示例', path: '/examples/overview', icon: 'file-text' },
    {
      title: '参考',
      icon: 'book',
      collapsible: true,
      children: [
        { title: '核心原则', path: '/reference/principles' },
        { title: '命名规范', path: '/reference/naming' },
        { title: '代码扫描', path: '/reference/code-scanning' },
      ],
    },
  ],
});
