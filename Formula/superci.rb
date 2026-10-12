# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.13.2.tgz"
      sha256 "e24a4ed4d962f694eb76b7b40f4add20cc4b4b658711254d7c4f6255e7e4745a"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.13.2.tgz"
      sha256 "f0acda6e6fe5b33349794eed9f5e7768bf553afeb54232922c4a40e7e4cde45b"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.13.2.tgz"
      sha256 "5c9e16782471f6fed19b0afba36c9c04c4ed56af82ad88581da112b958171a30"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.13.2.tgz"
      sha256 "ee667576917b0c5baf28bdc11fff655791ba9871f7588b6ef78666024b99c439"
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
