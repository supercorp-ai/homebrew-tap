# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.7.tgz"
      sha256 "f54f0208dc9141e5ebf144b73c7f225e00fb69649471edbb78c479373c5364a9"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.7.tgz"
      sha256 "40a5f708625f7d60b1953e1c7ec707b21784b01b61f64e37d3cdc1a8bb287901"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.7.tgz"
      sha256 "448f8b0214aabc472cbd3f0cc57ca0d68c9f0867e4d16d307fa83d3ad83f1a4b"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.7.tgz"
      sha256 "20b4a695c045258ce9d721ddb275f3d6c765e4f31c77f53a419e3a1886874596"
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
