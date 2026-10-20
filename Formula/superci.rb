# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.19.tgz"
      sha256 "e853e4bd61cd85e718eca4a9a7dd38380a17bb0dbb7a53a6361697f578ebb97c"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.19.tgz"
      sha256 "b21fdb08e998504eae2e959ca0f4cdee3a0f835faa26065718c62319dce3f0d9"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.19.tgz"
      sha256 "d05918f5fb38bbe73c4023e43e40f6491f650f57e610579135591f78737071fc"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.19.tgz"
      sha256 "87665ec3ed980ebe476b0cce08f396162b517e360ef7c0f92f8608a76cdbcc41"
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
