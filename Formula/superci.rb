# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.20.tgz"
      sha256 "20266721be9d7dba057cb231e70157d6d8a09d6be340a3952748c18a7025638f"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.20.tgz"
      sha256 "38edd030f2c262a3051cd0e1b7be9f67e077ffd5c81fe0818e86f3ca1fb27b97"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.20.tgz"
      sha256 "bb4cf0ba296a5efc9abe7b23223c59c6cce5b5ea7816f49f08335cada2155761"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.20.tgz"
      sha256 "ccb11f74d37e53af2087407de966d67004aecfc9c4bb40517225ac2383388800"
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
