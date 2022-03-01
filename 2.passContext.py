from ql.analyzer import JavaAnalyzer, analyze_str, analyze_str_context

if __name__ == '__main__':
    base = '/home/rain/program/tmp'
    context_to, context_from = analyze_str_context(base, f'{base}/pass.csv', 'java')
    context_to.to_csv(f'{base}/pass_context_to.csv')
    context_from.to_csv(f'{base}/pass_context_from.csv')