# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.20.2.tgz"
      sha256 "ae25c8f9a41c8317e2199dded1f63ea25025dfa11835ffea2ad070b95865fa00"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.20.2.tgz"
      sha256 "23bcb966603b5813120d412098c0cccf26ee1002cb7dc36ebda50abdbe967df1"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.20.2.tgz"
      sha256 "4a90d7f79474c34b5d1420b3093b448d638f966191fe6ea666d031846d50345e"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.20.2.tgz"
      sha256 "a648d9dc68db85968c92ced7d994fcbd4a0c9c8bb2f93fb36d69b14532325189"
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
