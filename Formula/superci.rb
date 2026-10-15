# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.3.tgz"
      sha256 "1332bb3dfe33936d26dccc464f36234b2db648e4c15b50a39ceb55338f53d9a0"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.3.tgz"
      sha256 "8ccf6c4a0fe47301a21a7fa2bc0456cc25537b4fd558e9139eded6a83573eeaf"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.3.tgz"
      sha256 "63e7460c421e3f185c6856d1278cf1ac3941357e89ee8fac74d931bc2f6af9a6"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.3.tgz"
      sha256 "117eb5354b3a534e10f23abb9c18580d4315d5ef3bbae54679333e866a0d96ce"
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
