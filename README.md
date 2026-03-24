# Exploiting Spack for MPICH's CI
Talk given at HPSF 2026 as part of the Spack Project Meeting.

https://hpsf2026.sched.com/event/2GmZK/exploiting-spack-for-mpichs-ci-ethan-wong-argonne-national-laboratory

## Description
We've significantly optimized our development workflow by experimentally
integrating Spack in our nightly testsuite. In the process, we encountered
unique challenges adapting a package manager primarily intended for end-users
on our existing CI runners and developed custom tools to port our existing jobs
to utilize Spack. The outcome is that our testsuite builds are now aggressively
cached and minimize internal dependency rebuilds. Additionally, our job
environments can now be declaratively reproduced without recompilation by any
member of our team. We hope that our results inspire others to consider
attempting a similar endeavor and reap the benefits of functional package
management within their own projects.
