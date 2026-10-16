# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.9.tgz"
      sha256 "44fd16eefc685e8357abcc81dc4355cdbb899bc1305ad9b05852c6e0564aa61b"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.9.tgz"
      sha256 "fac0552b54bde5d8f7e8055371f45337733526207b37a48e0c53bb4446ea086c"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.9.tgz"
      sha256 "e05952db3e08168ff1349cec3aa61b18cbff1e23461956888fa28769ab7b8f8a"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.9.tgz"
      sha256 "a3d4a26d60a8d46147ad0295d812eef791067e4b4d61b64f54c7c1fd5a185921"
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
