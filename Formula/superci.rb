# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.15.0.tgz"
      sha256 "f22ddf96ba32f14bddd46ab05a6c9281101688c379f49c8f6dbac9cdd40629b6"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.15.0.tgz"
      sha256 "405d2bbdf74240763d37d13ea0d9cfffeb07ad534df80702c7a119ba83798004"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.15.0.tgz"
      sha256 "cde8f3e64a38f5c3912d95bced4700c71a961c88d5eb18884283a294cebafe8d"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.15.0.tgz"
      sha256 "fafdd63a975a368a4cdada37aec479d3320e6d8ab493a1e72fea2942f1406c8b"
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
