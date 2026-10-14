# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.10.tgz"
      sha256 "a4e92310735dc04d8c159e2531f50140956ffd70a7159fd4317b253a5cea172d"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.10.tgz"
      sha256 "471ef9b81467429a3f00111dc6f5f335fb9d304e90a87b16fb8152988ad739d0"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.10.tgz"
      sha256 "c9ddbc503870a561a9f1b5efaebfa11cf750ef15a7c58fc525733c8ac21ba812"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.10.tgz"
      sha256 "bc4970c2178fc311c300bce5bc6e62e22e3a075c5c9ea84c0e26d9a1b2d41d45"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
