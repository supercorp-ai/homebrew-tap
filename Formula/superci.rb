# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.13.1.tgz"
      sha256 "d30be9513fef0b497afa30add01e11b6ae3bc6c50433178fd21b1d690fafce95"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.13.1.tgz"
      sha256 "346b198d0696871e418e41d2c16c32f9886d0445389029b91440120c68ad3a3e"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.13.1.tgz"
      sha256 "17daff251deaffee476c8f8b54e00cb26e45e68885c840630534bdf8f9ed3b3e"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.13.1.tgz"
      sha256 "261451ad461eb018cac2e2b4282ab047e416952f0fc178d9469e76cbad2409d5"
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
