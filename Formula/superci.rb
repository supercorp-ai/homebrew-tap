# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.17.tgz"
      sha256 "fd9150710b96bb15d3efe0c4978413b81e6ae36812a284b6f50a8aa0c7581110"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.17.tgz"
      sha256 "2fed48f286d6acab7b4668074d03a8bcb2c8ff8240023d8d0a10c4e60bd14537"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.17.tgz"
      sha256 "4dfc9b9fa7c8437663d668d8f0c63f285b92c836d4072fa6f703fcc0c695b65a"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.17.tgz"
      sha256 "fa1ca350387ecc8980dfbe5e3b80e41e8457c20e0a0251ed909d3a67fadd1458"
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
