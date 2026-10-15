# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.4.tgz"
      sha256 "b5d3ed180e60485268127ec34fde3fbb64cfa3b8af1daf0faa58cd751c563a20"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.4.tgz"
      sha256 "811c89e70cd89150ebeb31176c31c57020bb62d168ad4414e07b418ede64c08d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.4.tgz"
      sha256 "e882849607b190190f3977c881e407f214d3267916d673a3bd5865078a177760"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.4.tgz"
      sha256 "308552ab369aebabe603019570312ceb5048237e7c9f1d332816663d6d4d08b9"
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
