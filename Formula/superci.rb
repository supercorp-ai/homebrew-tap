# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.16.tgz"
      sha256 "87b56d57a91949bf752fcd3e968f26aec6edcf17e86241e4aef4574f93927e12"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.16.tgz"
      sha256 "eeb20049dfb4a5e933521b7237e7ccf13e03b40fff720d97c01c3f0ff2416179"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.16.tgz"
      sha256 "dac1b60a941f6cd0822e2ac523b91eedd16b084873e780ed51f2ca0299a34888"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.16.tgz"
      sha256 "8b18a23bd1e6ae052491921b68140a49d54f6409cefe195ec7083c00d4014d84"
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
