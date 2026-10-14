# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.18.2.tgz"
      sha256 "73874ee798e747a3e8da72af972c1e282f83469d4d8c41366afe65021fb4ed3b"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.18.2.tgz"
      sha256 "565df40d809e3b62930ad04d23625069c8b1037932d3819f3530a8b908583b99"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.18.2.tgz"
      sha256 "ef973770fefbfb259e1828aa38024ae6204805c3cf28972f5e7df7580695c615"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.18.2.tgz"
      sha256 "1fc707cc01d5569e7d2d0b13611f463893994adfdbcc0e36a380fe4d22b43d66"
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
