from ql.analyzer import init_analyzer

if __name__ == '__main__':
    language = 'java'
    base = '/home/gonghuihui/pwd_proj/java_database'
    analyzer = init_analyzer(language)
    # analyzer.get_pass_from_projects(base,threads=8)
    data = analyzer.merge_csv(base, "findPass")
    data.to_csv(f'{base}/pass.csv')