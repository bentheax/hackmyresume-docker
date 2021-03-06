## HackMyResume Docker

This is a docker container of the [HackMyResume](https://github.com/hacksalot/HackMyResume) project.

### Usage

An expected flow would be:

```
# Create in/resume.yml or in/resume.json file.
FILES=in/resume.json make validate

# Repeat until validation is successful
THEME=modern RESUME=in/resume.json make resume
```

At the end of this process, your files will be in the `out` directory.

### Additional Themes

If you want to use a theme that isn't built-in, you have two options:

1. clone it to your `in` directory
2. add it to your `package.json`

Regardless of theme used, I recommend writing your resume in FRESH format and
converting to JSON Resume format as needed. There is a is a `make convert` task
available to support this.

### Complex workflows

If you want to use an options file or more advanced HackMyResume features, just
use the binary directly. You only constraints are that `in` and `out` are the
only folders you can access from the host system.

```
docker-compose run hackmyresume
```
