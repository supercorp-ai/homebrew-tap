# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.12.0.tgz"
      sha256 "35e588ebe833b91e2ad7c2c3d8ca6f0797cd282584e4e4c70cb196de714495da"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.12.0.tgz"
      sha256 "310d0e4b9a53e979278a8c0ba2f504b47fdae157d5d2b82a46f148a083165db1"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.12.0.tgz"
      sha256 "dfe5aac7303d0b7d77e29430f0dad083f904dac183c2cb14af308f396e57d1d1"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.12.0.tgz"
      sha256 "839a673c2f7a300625810325e04b3fe195c7e50b90929480d7d3fc7d241254ae"
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
