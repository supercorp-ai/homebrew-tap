# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.14.0.tgz"
      sha256 "e9486c9ffeb21d14d48513673399add367dd1956fca9de000dc6d34abfb485f2"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.14.0.tgz"
      sha256 "3958b7ae8180add52db33a8e5b2a980906872f7662c411d017f51b2a69dd4fea"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.14.0.tgz"
      sha256 "f426df28080c6908de767b90f3b11f5b6690761fecc346283de1e49759497814"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.14.0.tgz"
      sha256 "bc2d542da5ef49dc1299ea46b4747423fb958b693ff98076fd7fd5449b20eac7"
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
