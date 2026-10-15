# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.1.tgz"
      sha256 "24ccd1781405516b21f28459563eac160c5751a47e510695e700a0a3d4e05fa3"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.1.tgz"
      sha256 "9079a11a40c669110b9d5497c25d7c6a33ed2922b092981d575aeac5fbaea0fc"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.1.tgz"
      sha256 "ae6800a27485d5b7fe6116ab39ea68a94e0e31fb60265c1401056ab00c3c531e"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.1.tgz"
      sha256 "f36be9b9ec760f33bf484efcdf76f76051308f1aaa572dc96e01b3c64959308d"
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
