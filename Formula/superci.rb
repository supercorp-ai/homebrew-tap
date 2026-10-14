# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.0.tgz"
      sha256 "0f3c689793f6e5fd37844a3a1dbb31d38a514a81c5e30143d38de2a3f1ee795a"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.0.tgz"
      sha256 "732c66ba86f2e7b78a92bc83c36f9d26aba65ed85507db6f9c1060de18f71a87"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.0.tgz"
      sha256 "ce117a01a7accecfcdab6ea09a7d4a821792dd067c46523182c85a2317f819e0"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.0.tgz"
      sha256 "184f5a5966092ac6f6e003f11dc2aa74b0d17deb620982dce31b5b60baf174b1"
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
