# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.9.tgz"
      sha256 "2083a857f9be948955d1a3998d97004fe603c8267c5dbf56400b4bd9e942bb9c"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.9.tgz"
      sha256 "a05297e3b59f7e671ec5695b1c2ea447432ce20742c0b71492c00361ea9842ed"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.9.tgz"
      sha256 "ba2de211c2ea4a0f143802b5d8ebfa469f1a6befc947f1d1b7428c1ece1d0f9f"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.9.tgz"
      sha256 "c9e525ec47b19162b31b38416cb9aa93f508ba352b565dba6d2d30366deb5138"
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
