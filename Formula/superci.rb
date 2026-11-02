# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.20.0.tgz"
      sha256 "ba4f3d6162011b9ec10cd72cbb3b3f370521376733880452922be01ce79e4754"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.20.0.tgz"
      sha256 "69b27d59cd3741bf9988340bd010f27a9ccdffdf252a119340cdb47eed039683"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.20.0.tgz"
      sha256 "1cdfe7203db968ce90c863cd8c65dd8bc56b53bb50c178248d57760666ddb05f"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.20.0.tgz"
      sha256 "d3378da8f36f239253f2214bcc9ec67ab94f5ca6b07a6bdd01c106c5efde7325"
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
